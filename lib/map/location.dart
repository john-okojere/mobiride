import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:permission/permission.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  _MapSampleState createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {

 Map<PolylineId, Polyline> _mapPolylines = {};
  int _polylineIdCounter = 1;

  static double latitude_current =6.465422;
  static double longitude_current = 3.406448;

  void _GetDeviceLocation() async {
    var location = new Location();
    location.changeSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 0,
      interval: 100,
    );
    location.onLocationChanged.listen((LocationData currentLocation) {
      latitude_current = currentLocation.latitude;
      longitude_current = currentLocation.longitude;
      _goToTheLake();
    });
  }



  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kLake = CameraPosition(
      bearing: 60.8334901395799,
      target: LatLng(latitude_current, longitude_current),
      tilt: 80.440717697143555,
      zoom: 18.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Ride Mode"),

        actions: <Widget>[IconButton(icon: Icon(Icons.add), onPressed: _GetDeviceLocation)],
      ),
      body: GoogleMap(
        mapType: MapType.satellite,
        initialCameraPosition: CameraPosition(
          target: LatLng(latitude_current, longitude_current),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) async {
          _GetDeviceLocation();
          _controller.complete(controller);
        },
        myLocationEnabled: true,
        polylines: Set<Polyline>.of(_mapPolylines.values),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('Drive Mode'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    _GetDeviceLocation();
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));

  }
}
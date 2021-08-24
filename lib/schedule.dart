import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'map/google_map.dart';
import 'schedule_bottom.dart';
import 'package:http/http.dart' as http;

import 'package:google_maps_flutter/google_maps_flutter.dart';
class Schedulepage extends StatefulWidget {
  const Schedulepage({Key? key}) : super(key: key);

  @override
  _SchedulepageState createState() => _SchedulepageState();
}

class _SchedulepageState extends State<Schedulepage> {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Mobride'),
          centerTitle: true,
          leading: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(

              height: MediaQuery.of(context).size.height * 0.6,
              child: Stack(
                children: [
                  GoogleMapScreen(),
                  Positioned(
                    child:Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: Column(
                          children: [
                      Padding(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Container(
                            height:50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                          ),
                          Positioned(
                            child:TextFormField(
                              onChanged: (val){
                                Findplaces(val);
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.location_pin),
                                hintText: 'Your Location',
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      )

                    ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child:Stack(
                                children: [
                                  Container(
                                    height:50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                    ),
                                  ),
                                  Positioned(
                                    child:TextFormField(
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.location_pin,
                                        color: Colors.red,),
                                        hintText: 'Your Desitination',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                  ],),)
                    ,),
      ]),
    ),


            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Schedulebottom(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void Findplaces(String placeName) async{
  if (placeName.length > 1  ){
    String autoCompleteUrl = "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$placeName&key=AIzaSyCQr1DkMgb54nnOuhVwOloEwQlSCzjutJE";
    var RequestAssistant;
    var res = await RequestAssistant.getRequest(autoCompleteUrl);
    if(res =="failed"){
      return;
    }
    print("places predictions response !!");
    print(res);
  }
}
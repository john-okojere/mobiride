import 'package:flutter/material.dart';
import 'map/google_map.dart';
import 'home_bottom.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mobride'),
          centerTitle: true,

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
              height: MediaQuery.of(context).size.height * 0.65,
              child: GoogleMapScreen(),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Homebottom(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

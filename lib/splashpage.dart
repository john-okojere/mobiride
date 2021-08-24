import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:mobiride/d_r.dart';

class SplashpagehomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SplashpagehomeWidget - FRAME
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        width: double.infinity,
        padding: EdgeInsets.only(left: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Image(image: AssetImage('assets/images/Asset91.png')),
            SizedBox(height: 10,),
            Text("MOBIRIDE", style: TextStyle(
              color: Colors.white
            ),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
            Container(
              alignment:Alignment.topLeft,
              child:Padding(
                padding: EdgeInsets.only(
                  left:20,
                ),
                child: Text(
                "Welcome To",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),
              ),
              ),
            ),
            Container(
              alignment:Alignment.topLeft,
              child:Padding(
                padding: EdgeInsets.only(
                  left:20,
                ),
                child: Text(
                  "Mobiride",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment:Alignment.topLeft,
              child:Padding(
                padding: EdgeInsets.only(
                  left:20,
                ),
                child: Text(
                  "Mobile Ride Sharing",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(height: 2,),
            Container(
              alignment:Alignment.topLeft,
              child:Padding(
                padding: EdgeInsets.only(
                  left:20,
                ),
                child: Text(
                  "Platform",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(height:MediaQuery.of(context).size.height * 0.2),
            Container(
              alignment:Alignment.topLeft,
              child:Padding(
                padding: EdgeInsets.only(
                  left:20,
                ),
                child: TextButton(
                  onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DriveOrRide()));
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black
                    ),
                  ),
                  style:ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 1),
                  ) ,
                ),
              ),),),
          ],
        ),
      ),
    );
  }
}
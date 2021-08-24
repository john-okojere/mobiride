import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class DriveOrRide extends StatefulWidget {
  const DriveOrRide({Key? key}) : super(key: key);

  @override
  _DriveOrRideState createState() => _DriveOrRideState();
}

class _DriveOrRideState extends State<DriveOrRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        width: double.infinity,
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          color:Colors.indigo,
        ),
        child: Column(
          children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.2),
        Image(image: AssetImage('assets/images/Asset91.png')),
        SizedBox(height: 10,),
        Text("MOBIRIDE", style: TextStyle(
            color: Colors.white
        ),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Container(
              padding: EdgeInsets.only(left:40),
              alignment: Alignment.topLeft,
              child: Text('You Are Here As A',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Nuntio',
              ),),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05 ,),
            Container(
              padding: EdgeInsets.only(left:20),
              child: Row(
                children: [
                  Container(
                    height:134 ,
                    width: 141,
                    child:RaisedButton(
                        onPressed:(){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Homepage()));
                        },
                        child:Container(
                            padding: EdgeInsets.only(top: 25),

                            child: Column(
                              children: [
                                Icon(
                                  Icons.drive_eta_outlined,
                                  color: Colors.black,
                                  size: 50.0,
                                  semanticLabel: 'Text to announce in accessibility modes',
                                ),
                                Text(
                                  "Driver",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                        )
                    ) ,
                  ),
                  SizedBox(width: 50,),
                  Container(
                    height:134 ,
                    width: 141,
                    child:RaisedButton(

                        onPressed:(){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Homepage()));
                        },
                        child:Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.directions_walk_outlined,
                                  color: Colors.black,
                                  size: 50.0,
                                  semanticLabel: 'Text to announce in accessibility modes',
                                ),
                                Text(

                                  "Rider",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                        )
                    ) ,
                  )

                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'You would be required to provide',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'your car particulars and driving',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'licence for verification.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

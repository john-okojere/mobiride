import 'package:flutter/material.dart';
import 'schedule/date.dart';
import 'schedule/time.dart';

enum WidgetMaker { scheduledate }

class Schedulebottom extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Schedulebottom> {
  WidgetMaker selectedWidgetmarker = WidgetMaker.scheduledate;

  @override
  Widget build(BuildContext homebutton) {
    return Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              child: Text(
                'SCHEDULE RIDE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Nunito',
                  fontSize: 20,
                  letterSpacing:
                  0.5 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 20),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Datepicker(),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Timepicker(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, "YourRoute");
                      },
                      icon: Icon(
                        Icons.payment,
                        color: Colors.black,
                        size: 30.0,
                      ),
                      label: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Book Now',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Nunito',
                            fontSize: 17,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

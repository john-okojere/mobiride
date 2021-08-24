import 'package:flutter/material.dart';
import 'request_now.dart';
import 'schedule.dart';

enum WidgetMaker { scheduledate }

class Homebottom extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Homebottom> {
  WidgetMaker selectedWidgetmarker = WidgetMaker.scheduledate;

  @override
  Widget build(BuildContext homebutton) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 20,
            ),
            child: Text(
              'REQUEST A RIDE NOW',
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
          Center(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Requestnow(),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Center(
                        child: Container(
                      alignment: Alignment.center,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Schedulepage()));
                        },
                        icon: Icon(
                          Icons.schedule,
                          color: Colors.black,
                          size: 20.0,
                        ),
                        label: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Schedule',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Nunito',
                              fontSize: 15,
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
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';

class Requestnow extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Requestnow> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: ElevatedButton.icon(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Positioned(
                          right: -40.0,
                          top: -40.0,
                          child: InkResponse(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: CircleAvatar(
                              child: Icon(Icons.close),
                              backgroundColor: Colors.indigo,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'This feature is currently under development',
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
                        )
                      ],
                    ),
                  );
                });
          },
          icon: Icon(
            Icons.drive_eta,
            color: Colors.white,
            size: 20.0,
          ),
          label: Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              'Ride now',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
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
              Color.fromRGBO(105, 240, 174, 1),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:mobiride/d_r.dart';

class otppage extends StatefulWidget {
  const otppage({Key? key}) : super(key: key);

  @override
  _otppageState createState() => _otppageState();
}

class _otppageState extends State<otppage> {
  bool otpCode = false;
  late String code;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
            padding: const EdgeInsets.all(40.0),
            child: otpCode
                ? Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Enter your 5 Digits pin',style: TextStyle(fontSize: 15),),
                        SizedBox(
                          height: 50,
                        ),
                        new TextField(
                            decoration: new InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.indigo, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black45, width: 1.0),
                              ),
                            ),
                            maxLength: 5,

                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            onChanged: (String pin) {
                              if (pin.length == 5) {
                                if (pin == '12345') {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => DriveOrRide()));
                                } else {
                                  setState(() {
                                    otpCode = false;
                                  });
                                }
                              }
                              setState(() {
                                pin = code;
                              });
                            }),
                        // new PinEntryTextField(
                        //     showFieldAsBox: false,
                        //     fieldWidth: 20,
                        //     fields: 5,
                        //     onSubmit: (String pin) {
                        //       if (pin == '12345') {
                        //         Navigator.of(context).push(
                        //             MaterialPageRoute(builder: (context) => DriveOrRide()));
                        //       } else {
                        //         setState(() {
                        //           otpCode = true;
                        //         });
                        //         // showDialog(
                        //         //     context: context,
                        //         //     builder: (context) {
                        //         //       return AlertDialog(
                        //         //         title: Text("Pin"),
                        //         //         content: Text('Pin entered is $pin'),
                        //         //       );
                        //         //     }); //end showDialog()
                        //
                        //       } // end PinEn
                        //     })
                      ],
                    )),
                  ])
                : new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Login in with your phone number'),
                      SizedBox(
                        height: 30,
                      ),
                      new TextField(
                        decoration: new InputDecoration(
                          labelText: "Enter your number",
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.indigo, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black45, width: 1.0),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only numbers can be entered
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: RaisedButton(
                          color: Colors.indigo,
                          onPressed: () {
                            setState(() {
                              otpCode = true;
                            });
                          },
                          child: Container(
                              width: 200,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  )),
      ]),
    );
  }
}

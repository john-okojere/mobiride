import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:mobiride/homepage.dart';

class emailpage extends StatefulWidget {
  const emailpage({Key? key}) : super(key: key);

  @override
  _emailpageState createState() => _emailpageState();
}

class _emailpageState extends State<emailpage> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(40.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Login in with your Email Address'),
                SizedBox(
                  height: 40,
                ),
                new TextField(
                    decoration: new InputDecoration(
                      labelText: "Enter your email",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.indigo, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black45, width: 1.0),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress)
              ], // Only numbers can be entered
            ),),

          Container(
            alignment: Alignment.center,
            child: RaisedButton(
              color: Colors.indigo,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Homepage()));
              },
              child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )),
            ),
          ),
        ],
        ));

  }
}

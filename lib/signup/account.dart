import 'package:flutter/material.dart';
import 'package:mobiride/homepage.dart';

class actdetail extends StatefulWidget {
  const actdetail({Key? key}) : super(key: key);

  @override
  _actdetailState createState() => _actdetailState();
}

class _actdetailState extends State<actdetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
            padding: const EdgeInsets.only(top:10.0,bottom: 10,left: 20,right: 20),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Login in with your account details'),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  child:new TextField(
                    decoration: new InputDecoration(
                      labelText: "Enter Username",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45, width: 1.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  child:
                  new TextField(
                    decoration: new InputDecoration(
                      labelText: "Enter password",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45, width: 1.0),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ) ,
                ),
                SizedBox(
                  height: 20,
                ),
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
            )),
      ]),
    );
  }
}

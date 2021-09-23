import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobiride/homepage.dart';

class actdetail extends StatefulWidget {
  const actdetail({Key? key}) : super(key: key);

  @override
  _actdetailState createState() => _actdetailState();
}

class _actdetailState extends State<actdetail> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  User? user = FirebaseAuth.instance.currentUser;
  var text = 'Login in with your account details';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 10, left: 20, right: 20),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text((user == null
                    ? text
                    : 'you are loged in')),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  child: new TextField(
                    decoration: new InputDecoration(
                      labelText: "Enter Email",
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.indigo, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black45, width: 1.0),
                      ),
                    ),
                    controller: emailController,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: new TextField(
                    decoration: new InputDecoration(
                      labelText: "Enter password",
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.indigo, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black45, width: 1.0),
                      ),
                    ),
                    obscureText: true,
                    controller: passwordController,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: RaisedButton(
                        color: Colors.indigo,
                        onPressed: () async {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text);
                          emailController.clear();
                          passwordController.clear();
                          setState(() {});
                        },
                        child: Container(
                            width: 85,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 10
                            ),
                            child: Text(
                              "Sign up",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      alignment: Alignment.center,
                      child: RaisedButton(
                        color: Colors.indigo,
                        onPressed: () async {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text);
                          emailController.clear();
                          passwordController.clear();
                          setState(() {});

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Homepage()));

                        },
                        child: Container(
                            width: 85,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                              bottom: 10,
                              top: 10
                            ),
                            child: Text(
                              "Sign In",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ]),
    );
  }
}

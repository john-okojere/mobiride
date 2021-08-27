import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'otp.dart';
import 'account.dart';
import 'email.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool visibilityphone = true;
  bool visibilityaccount = false;
  bool visibilityemail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(children: [
          Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  color: Colors.indigo,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                      ),
                      Center(
                        child: Image(
                            image: AssetImage('assets/images/Asset91.png')),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "MOBIRIDE",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.47,
                ),
                Container(
                  color: Colors.white,
                  child: Text(
                      'By clicking you are agreeing to our terms and conditions'),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height * 0.25,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    visibilityphone ? otppage() : new Container(),
                    visibilityaccount ? actdetail() : new Container(),
                    visibilityemail ? emailpage() : new Container(),
                    SizedBox(height: 10,),
                    Container(
                      child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                              child:IconButton(
                                onPressed: (){
                                  setState(() {
                                    visibilityphone = true;
                                    visibilityaccount = false;
                                    visibilityemail = false;
                                  });
                                },
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.indigo,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                              child:IconButton(
                                onPressed: (){
                                  setState(() {
                                    visibilityphone = false;
                                    visibilityaccount = true;
                                    visibilityemail = false;
                                  });
                                },
                                icon: Icon(
                                  Icons.account_box,
                                  color: Colors.indigo,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                              child:IconButton(
                                onPressed: (){
                                  setState(() {
                                    visibilityphone = false;
                                    visibilityaccount = false;
                                    visibilityemail = true;
                                  });
                                },

                                icon: Icon(
                                  Icons.email,
                                  color: Colors.indigo,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

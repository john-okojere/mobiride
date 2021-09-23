import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'homepage.dart';
import 'splashpage.dart';

import 'package:mobiride/signup/sign_in.dart';

User? user = FirebaseAuth.instance.currentUser;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp((user == null ? MSignIn() : MyApp() ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobi Ride',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
       home:SplashpagehomeWidget()
    );
  }
}
//

class MSignIn extends StatefulWidget {
  const MSignIn({Key? key}) : super(key: key);

  @override
  _MSignInState createState() => _MSignInState();
}

class _MSignInState extends State<MSignIn> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobi Ride',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home:SignIn()
    );
  }
}

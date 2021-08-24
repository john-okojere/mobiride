import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:flutter/material.dart';
import 'splashpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //2746AA
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobi Ride',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home:SplashpagehomeWidget(),
    );
  }
}

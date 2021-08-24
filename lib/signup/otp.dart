import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.indigo,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Center(
                child:Image(image: AssetImage('assets/images/Asset91.png')),
              ),
            ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Center(
                child:Image(image: AssetImage('assets/images/Asset91.png')),
              ),
            )
          ],
        ),
      ),
    );
  }
}

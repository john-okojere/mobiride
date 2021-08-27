import 'package:flutter/material.dart';
import 'package:mobiride/menu.dart';
import 'transactions.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text('MobiPAY'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(20),
              child: Text(
                'Wallet',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.topRight,
              child: Text(
                'Balance',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              padding: EdgeInsets.only(right: 85),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 20),
              child: Text(
                'NGN 5,000',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'TRANSACTIONS',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Nunito',
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: Text(
                      'View All',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  )
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.6,
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Transaction()),
          ],
        ),
      ),
    );
  }
}

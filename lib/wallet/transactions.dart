import 'package:flutter/material.dart';
import 'detail.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: <Widget>[
      SizedBox(
        height: 20,
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Trans_Detail()));
        },
        child: Container(
          width: double.infinity,
          height: 70,
          color: Colors.white38,
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Recieved Payment ....',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nuntio',
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, right: 80),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '3 Days ago',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Container(
                child: Text(
                  '+ NGN 1500',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nuntio',
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Trans_Detail()));
          },
          child: Container(
            width: double.infinity,
            height: 70,
            color: Colors.white38,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Icon(
                    Icons.upload,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Payment from ikej ....',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nuntio',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, right: 80),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '2 Days ago',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  child: Text(
                    '- NGN 500',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nuntio',
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )),
      SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Trans_Detail()));
          },
          child: Container(
            width: double.infinity,
            height: 70,
            color: Colors.white38,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Recieved Payment ....',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nuntio',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, right: 80),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '2 Days ago',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  child: Text(
                    '+ NGN 1000',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nuntio',
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )),
      SizedBox(
        height: 20,
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Trans_Detail()));
        },
        child: Container(
          width: double.infinity,
          height: 70,
          color: Colors.white38,
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Recieved Payment ....',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nuntio',
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, right: 80),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '3 Days ago',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Container(
                child: Text(
                  '+ NGN 1500',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nuntio',
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Trans_Detail()));
          },
          child: Container(
            width: double.infinity,
            height: 70,
            color: Colors.white38,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Icon(
                    Icons.upload,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Payment from ikej ....',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nuntio',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, right: 80),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '2 Days ago',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  child: Text(
                    '- NGN 500',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nuntio',
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )),
      SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Trans_Detail()));
          },
          child: Container(
            width: double.infinity,
            height: 70,
            color: Colors.white38,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Recieved Payment ....',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nuntio',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, right: 80),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '2 Days ago',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  child: Text(
                    '+ NGN 1000',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nuntio',
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )),
      SizedBox(
        height: 20,
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Trans_Detail()));
        },
        child: Container(
          width: double.infinity,
          height: 70,
          color: Colors.white38,
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Recieved Payment ....',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nuntio',
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, right: 80),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '3 Days ago',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Container(
                child: Text(
                  '+ NGN 1500',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nuntio',
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Trans_Detail()));
          },
          child: Container(
            width: double.infinity,
            height: 70,
            color: Colors.white38,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Icon(
                    Icons.upload,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Payment from ikej ....',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nuntio',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, right: 80),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '2 Days ago',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  child: Text(
                    '- NGN 500',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nuntio',
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )),
      SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Trans_Detail()));
          },
          child: Container(
            width: double.infinity,
            height: 70,
            color: Colors.white38,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Recieved Payment ....',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nuntio',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, right: 80),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '2 Days ago',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  child: Text(
                    '+ NGN 1000',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nuntio',
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )),
      SizedBox(
        height: 20,
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Trans_Detail()));
        },
        child: Container(
          width: double.infinity,
          height: 70,
          color: Colors.white38,
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Recieved Payment ....',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nuntio',
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, right: 80),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '3 Days ago',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Container(
                child: Text(
                  '+ NGN 1500',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nuntio',
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Trans_Detail()));
          },
          child: Container(
            width: double.infinity,
            height: 70,
            color: Colors.white38,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Icon(
                    Icons.upload,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Payment from ikej ....',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nuntio',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, right: 80),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '2 Days ago',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  child: Text(
                    '- NGN 500',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nuntio',
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )),
      SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Trans_Detail()));
          },
          child: Container(
            width: double.infinity,
            height: 70,
            color: Colors.white38,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Recieved Payment ....',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nuntio',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, right: 80),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '2 Days ago',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  child: Text(
                    '+ NGN 1000',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nuntio',
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )),
    ]);
  }
}

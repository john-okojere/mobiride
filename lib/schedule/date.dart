import 'package:flutter/material.dart';

class Datepicker extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Datepicker> {
  DateTime date = DateTime.now();

  String getText() {
    if (date == null) {
      return 'Select Date';
    } else {
      return '${date.day}, ${date.month} ${date.year}';
    }
  }

  Future<Null> pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime.now(),
      lastDate: DateTime(2022),
    );

    if (newDate != null && newDate != date) {
      setState(() {
        date = newDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: TextButton(
          onPressed: () {
            setState(() {
              pickDate(context);
            });
          },
            child: Text(
              getText(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Nunito',
                fontSize: 17,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ),
      );
  }
}

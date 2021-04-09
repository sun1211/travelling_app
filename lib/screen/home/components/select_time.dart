import 'package:flutter/material.dart';
import 'package:travelling_app/constants.dart';

class SelectTime extends StatelessWidget {
  final String time;
  const SelectTime({
    Key key,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(
            Duration(
              days: 7,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
        ),
        padding: EdgeInsets.only(
          bottom: 8,
          top: 15,
        ),
        child: Row(
          children: <Widget>[
            Text(
              time,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: dark,
              ),
            ),
            SizedBox(width: 30),
            Icon(
              Icons.calendar_today,
              size: 18,
              color: dark,
            ),
          ],
        ),
      ),
    );
  }
}

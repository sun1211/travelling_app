import 'package:flutter/material.dart';
import 'package:travelling_app/constants.dart';

Padding buildSeclectPlace(bool isSelect, String main, String primary) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        isSelect
            ? Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: dark.withOpacity(.15),
                ),
                padding: EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: dark,
                  ),
                  height: 13,
                  width: 13,
                ),
              )
            : Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: dark.withOpacity(.15),
                ),
                padding: EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: dark,
                        width: 1.25,
                      )),
                  height: 13,
                  width: 13,
                ),
              ),
        SizedBox(
          width: 20,
        ),
        Text(
          main,
          style: TextStyle(
            color: dark,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          primary,
          style: TextStyle(
            color: grey,
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}

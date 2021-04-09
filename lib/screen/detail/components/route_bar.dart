import 'package:flutter/material.dart';
import 'package:travelling_app/constants.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: primary,
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.chevron_left,
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.sort,
          color: Colors.white,
        ),
      ),
    ],
  );
}

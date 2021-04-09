import 'package:flutter/material.dart';

Row buildHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Odessa",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
      Text(
        "Fr 6 Mar.",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    ],
  );
}

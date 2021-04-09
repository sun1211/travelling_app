import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelling_app/constants.dart';

import 'dart:math' as math;

Row buildSortLayout() {
  return Row(
    children: [
      Text(
        "Sort by:",
        style: TextStyle(
          color: Colors.white.withOpacity(.75),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        child: Row(
          children: [
            Text(
              "Price",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Transform.rotate(
              angle: -90 * math.pi / 180,
              child: Icon(
                Icons.chevron_left,
                color: Colors.white,
                size: 14,
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: SizedBox(),
      ),
      Badge(
        badgeColor: orange,
        badgeContent: Text(
          "1",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 11,
          ),
        ),
        position: BadgePosition.topStart(
          top: -5,
        ),
        elevation: 0,
        child: ClipOval(
          child: Material(
            color: Colors.white.withOpacity(.1),
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      ClipOval(
        child: Material(
          color: Colors.white.withOpacity(.1),
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(6),
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

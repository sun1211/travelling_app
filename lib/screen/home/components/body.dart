import 'package:flutter/material.dart';
import 'package:travelling_app/components/swapt_button.dart';
import 'package:travelling_app/constants.dart';
import 'package:travelling_app/size_config.dart';

import 'find_route_btn.dart';
import 'select_place.dart';
import 'select_time.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //home images
            Center(
              child: Container(
                child: Image.asset('assets/images/traveling.png'),
                height: 400,
                padding: EdgeInsets.symmetric(
                  horizontal: 0,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //title
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "Book your flight",
                style: TextStyle(
                  color: dark,
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.15,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //select place layout
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildSeclectPlace(true, 'Odessa,', 'Ukraine'),
                    Container(
                      height: 1,
                      color: Colors.black.withOpacity(0.1),
                      width: SizeConfig.screenWidth * 0.5,
                      margin: EdgeInsets.only(
                        left: 40,
                      ),
                    ),
                    buildSeclectPlace(false, 'Los Angeles,', 'USA'),
                  ],
                ),
                SizedBox(
                  width: 70,
                ),
                SwapBtn(),
              ],
            ),
            //date book
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SelectTime(
                  time: '6 April',
                ),
                SizedBox(
                  width: 40,
                ),
                SelectTime(
                  time: '8 April',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            FindRouteBtn(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

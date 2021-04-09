import 'package:flutter/material.dart';
import 'package:travelling_app/constants.dart';

class RouteTabBar extends StatelessWidget {
  const RouteTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 17,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withOpacity(.25),
        ),
      ),
      height: 50,
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              labelColor: primary2,
              unselectedLabelColor: Colors.white.withOpacity(.85),
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              tabs: [
                Tab(
                  text: "TRAIN",
                ),
                Tab(
                  text: "BUS",
                ),
                Tab(
                  text: "PLANE",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

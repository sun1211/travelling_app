import 'package:flutter/material.dart';
import 'package:travelling_app/constants.dart';
import 'package:travelling_app/size_config.dart';

import 'header.dart';
import 'route_tab_bar.dart';
import 'sort_layout.dart';
import 'tab_content.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            height: SizeConfig.screenHeight * 0.65,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeader(),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    "Los Angeles",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  buildSortLayout(),
                  SizedBox(
                    height: 40,
                  ),
                  RouteTabBar(),
                  SizedBox(
                    height: 25,
                  ),
                  DemoTabContent(
                    routeType: "train",
                  ),
                  DemoTabContent(
                    routeType: "train",
                  ),
                  DemoTabContent(
                    routeType: "train",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

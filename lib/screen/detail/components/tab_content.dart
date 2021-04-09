import 'package:flutter/material.dart';
import 'package:travelling_app/constants.dart';

import 'route_card.dart';

class DemoTabContent extends StatelessWidget {
  const DemoTabContent({
    Key key,
    this.routeType,
  }) : super(key: key);

  final String routeType;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            RouteCard(
              routeType: routeType,
              price: 634,
              className: "Top",
              classColor: orange,
              classTextColor: Colors.white,
              fromDate: "Fr 6 Mar.",
              fromName: "ODS",
              fromTime: "2:55 pm",
              toDate: "Fr 6 Mar.",
              toName: "CA (LAX)",
              toTime: "8:20 pm",
              tripList: ["13 h 25 m"],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_drawing/path_drawing.dart';
import 'package:travelling_app/constants.dart';

import 'dart:math' as math;

import 'route_dot.dart';

class RouteCard extends StatelessWidget {
  const RouteCard({
    Key key,
    this.price,
    this.routeType,
    this.fromDate,
    this.fromName,
    this.fromTime,
    this.toDate,
    this.toName,
    this.toTime,
    this.className,
    this.tripList,
    this.classColor,
    this.classTextColor,
  }) : super(key: key);

  final double price;
  final String routeType,
      fromDate,
      fromName,
      fromTime,
      toDate,
      toName,
      toTime,
      className;
  final List<String> tripList;
  final Color classColor, classTextColor;

  buildTripList() {
    List<Widget> widgets = [];
    widgets.add(RouteDotStart());
    for (var item in tripList.asMap().entries) {
      if (item.key > 0) {
        widgets.add(RouteDotMid());
      }

      widgets.add(RouteCardTimeItem(
        time: item.value,
        type: routeType,
      ));
    }
    widgets.add(RouteDotEnd());
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          ),
        ],
      ),
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$${price.round()}",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      color: orange,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                      ),
                      color: classColor,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: Text(
                      className,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: classTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            fromDate,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: grey,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            fromName,
                            style: GoogleFonts.roboto(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              color: dark,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            fromTime,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: dark2,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            toDate,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: grey,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            toName,
                            style: GoogleFonts.roboto(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              color: dark,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            toTime,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: dark2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 22,
                        child: CustomPaint(
                          painter: RouteCardDashLinePainter(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: buildTripList(),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RouteCardTimeItem extends StatelessWidget {
  const RouteCardTimeItem({
    Key key,
    this.type,
    this.time,
  }) : super(key: key);

  final String type, time;

  buildIcon() {
    switch (type) {
      case "train":
        return Transform.translate(
          offset: Offset(0, -2),
          child: Icon(
            Icons.train,
            color: routeIcon,
            size: 28,
          ),
        );
        break;
      case "bus":
        return Transform.translate(
          offset: Offset(0, -2),
          child: Icon(
            Icons.directions_bus,
            color: routeIcon,
            size: 28,
          ),
        );
        break;
      case "plane":
        return Transform.translate(
          offset: Offset(0, -2),
          child: Transform.rotate(
            angle: 90 * math.pi / 180,
            child: Icon(
              Icons.flight,
              color: routeIcon,
              size: 28,
            ),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  Icon
        buildIcon(),
        SizedBox(
          height: 5,
        ),
        //  Time
        Text(
          time,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: routeIcon,
          ),
        ),
      ],
    );
  }
}

class RouteCardDashLinePainter extends CustomPainter {
  final Paint paintStyle = Paint()
    ..color = routeIcon
    ..strokeWidth = 1.0
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    Path p = Path()
      ..moveTo(10, size.height / 2)
      ..lineTo(size.width - 10, size.height / 2);

    canvas.drawPath(
      dashPath(
        p,
        dashArray: CircularIntervalList<double>([10, 5]),
      ),
      paintStyle,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

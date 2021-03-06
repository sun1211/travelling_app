import 'package:flutter/material.dart';
import 'package:travelling_app/constants.dart';

class RouteDotMid extends StatelessWidget {
  const RouteDotMid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: routeDot,
          width: 1.25,
        ),
      ),
      margin: EdgeInsets.all(4),
      height: 13,
      width: 13,
    );
  }
}

class RouteDotEnd extends StatelessWidget {
  const RouteDotEnd({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: routeDot.withOpacity(.15),
      ),
      padding: EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: routeDot,
              width: 1.25,
            )),
        height: 13,
        width: 13,
      ),
    );
  }
}

class RouteDotStart extends StatelessWidget {
  const RouteDotStart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: routeDot.withOpacity(.15),
      ),
      padding: EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: routeDot,
        ),
        height: 13,
        width: 13,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travelling_app/constants.dart';

class FindRouteBtn extends StatelessWidget {
  const FindRouteBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: dark,
        padding: EdgeInsets.symmetric(
          vertical: 16,
        ),
        onPressed: () {
          // Navigator.push(
          // context,
          // MaterialPageRoute(
          // builder: (context) => RouteScreen(),
          // ),
          // );
        },
        child: Container(
          width: 300,
          child: Center(
            child: Text(
              "Find a route",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                letterSpacing: .75,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

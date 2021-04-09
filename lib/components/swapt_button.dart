import 'package:flutter/material.dart';
import 'package:travelling_app/constants.dart';

class SwapBtn extends StatelessWidget {
  const SwapBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: orange,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.swap_vert,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travelling_app/constants.dart';
import 'package:travelling_app/screen/detail/components/body.dart';
import 'package:travelling_app/size_config.dart';

import 'components/route_bar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: bg,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }
}

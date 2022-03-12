import 'package:flutter/material.dart';
import 'package:starbucks/presentation/screen/details/components/curveClipper.dart';

import '../../../helpers/constants.dart';

class CustomShape extends StatelessWidget {
  CustomShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        height: size.height * 0.4,
        color: kPrimaryColor,
      ),
    );
  }
}

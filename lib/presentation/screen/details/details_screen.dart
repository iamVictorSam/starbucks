import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:starbucks/presentation/helpers/constants.dart';

import 'package:starbucks/presentation/widgets/icon_btn_with_counter.dart';

import '../../../models/models.dart';
import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key, required this.product}) : super(key: key);
  final Products product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: (() => Get.back()),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.keyboard_backspace_rounded,
                color: Colors.white.withOpacity(0.9),
                size: 30,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 30.w),
              child: IconBtnWithCounter(
                numOfitem: 2,
                svgSrc: 'assets/Cart Icon.svg',
                press: () {},
                color: Colors.white,
                countColor: kPrimaryColor,
              ),
            )
          ],
          backgroundColor: kPrimaryColor,
          automaticallyImplyLeading: true,
          elevation: 0,
        ),
        body: DetailsBody(
          product: product,
        ),
      ),
    );
  }
}

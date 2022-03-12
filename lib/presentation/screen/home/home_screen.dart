import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:starbucks/presentation/helpers/constants.dart';
import 'package:starbucks/presentation/screen/home/components/body.dart';
import 'package:starbucks/presentation/widgets/icon_btn_with_counter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        // ignore: prefer_const_constructors
        leading: Icon(
          Icons.notes_rounded,
          color: kPrimaryColor,
          size: 35,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: IconBtnWithCounter(
              numOfitem: 2,
              svgSrc: 'assets/Cart Icon.svg',
              press: () {},
              color: kPrimaryColor,
            ),
          )
        ],
      ),
      body: HomeBody(),
    );
  }
}

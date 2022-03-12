import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helpers/constants.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfitem = 0,
    required this.press,
    this.color = Colors.white,
    this.countColor = Colors.white,
  }) : super(key: key);

  final Color countColor;
  final String svgSrc;
  final int numOfitem;
  final Color color;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(9),
            height: 46,
            width: 46,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              svgSrc,
              color: color,
              height: 50.h,
              width: 30.w,
            ),
          ),
          if (numOfitem != 0)
            Positioned(
              top: 3,
              right: 0,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: TextStyle(
                      fontSize: 10,
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: countColor,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

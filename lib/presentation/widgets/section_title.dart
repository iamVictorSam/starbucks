import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks/presentation/helpers/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required this.data}) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              letterSpacing: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w),
            child: Container(
              width: 35.w,
              height: 2.h,
              color: kPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}

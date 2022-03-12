import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks/presentation/helpers/constants.dart';

class ProductCard extends StatelessWidget {
  ProductCard(
      {Key? key,
      required this.price,
      required this.image,
      required this.name,
      required this.id,
      this.bgColor = Colors.grey,
      required this.press,
      required this.child})
      : super(key: key);

  final String price, image, name;
  final Color bgColor;
  final int id;
  final Widget child;
  final GestureTapCallback press;

  final TextStyle _style = TextStyle(
      color: Colors.white.withOpacity(0.8),
      fontWeight: FontWeight.bold,
      fontSize: 15.sp);
  final TextStyle _titlestyle = TextStyle(
      color: Colors.white.withOpacity(0.8),
      fontWeight: FontWeight.bold,
      fontSize: 15.sp,
      letterSpacing: 0.7);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 25.h),
          child: Container(
            width: 170.w,
            decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 7),
                  ),
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '\$$price',
                      style: _style,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: Hero(
                      tag: id,
                      child: Container(
                        height: 110.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    name,
                    style: _titlestyle,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: child,
        ),
      ],
    );
  }
}

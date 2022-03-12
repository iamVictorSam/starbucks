import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../models/models.dart';
import '../../../helpers/constants.dart';
import 'curvedwidget.dart';

class DetailsBody extends StatefulWidget {
  DetailsBody({Key? key, required this.product}) : super(key: key);
  final Products product;

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  final TextStyle _titleStyle = TextStyle(
    fontSize: 12.sp,
    color: Colors.white70,
  );
  final TextStyle _coffeeStyle = TextStyle(
      color: Colors.white.withOpacity(0.9),
      fontSize: 17.sp,
      fontWeight: FontWeight.w600);
  final TextStyle _style = TextStyle(
      color: Colors.white.withOpacity(0.9),
      fontSize: 15.sp,
      fontWeight: FontWeight.w600);
  final TextStyle _infoStyle = TextStyle(
      color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w600);
  final TextStyle _descStyle = TextStyle(
    color: const Color.fromARGB(255, 124, 124, 124),
    fontSize: 15.sp,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              CustomShape(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              imageRow(),
              SizedBox(
                height: 30.h,
              ),
              descColumn()
            ],
          )
        ],
      ),
    );
  }

  Padding descColumn() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Description', style: _infoStyle),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Starbucks Chilled Classics Caffe Latte coffe drink in 200ml cup with a straw. A refreshingly chilled blend of Starbucks',
            style: _descStyle,
          ),
          SizedBox(
            height: 25.h,
          ),
          Text(
            'Product information',
            style: _infoStyle,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            '3.1% fat milk (75%), Starbucks Arabica coffee (watter and ...)',
            style: _descStyle,
          ),
        ],
      ),
    );
  }

  Container imageRow() {
    return Container(
      padding: EdgeInsets.only(left: 30.w, right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                'GET YOUR',
                style: _titleStyle,
              ),
              Text(
                widget.product.name,
                style: _coffeeStyle,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Price',
                style: _titleStyle,
              ),
              Text(
                '\$${widget.product.price}',
                style: _style,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Size',
                style: _titleStyle,
              ),
              Row(
                children: [
                  Text(
                    'Small',
                    style: _style,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 75.h,
              ),
              const CircleAvatar(
                backgroundColor: kPrimaryColor,
                radius: 25,
                child: Icon(
                  Icons.add_rounded,
                  size: 35,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Expanded(
            child: Hero(
              tag: widget.product.id,
              child: Image.asset(
                widget.product.image,
                height: 300.h,
                width: 200.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

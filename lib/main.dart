import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:starbucks/presentation/screen/animated_splash_screen.dart';
import 'package:starbucks/presentation/screen/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: () => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'StackBucks',
              theme: ThemeData(
                textTheme: TextTheme(button: TextStyle(fontSize: 45.sp)),
              ),
              home: InitScreen(),
            ));
  }
}

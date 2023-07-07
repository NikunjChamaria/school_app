import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leaderboard/pages/homescreen.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(392.72727272727275, 872.7272727272727),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const GetMaterialApp(
            title: 'School App',
            debugShowCheckedModeBanner: false,
            home: HomeSreen(),
          );
        });
  }
}

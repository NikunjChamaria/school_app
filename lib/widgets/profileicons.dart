// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leaderboard/widgets/textsytle.dart';

import '../constants/color.dart';

class ProfileIcon extends StatelessWidget {
  final void Function() ontap;
  final String iconname;
  final String icon;
  const ProfileIcon(
      {super.key,
      required this.ontap,
      required this.iconname,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.all(3.0.h),
        child: Container(
          decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.all(Radius.circular(10.h))),
          child: Padding(
            padding: EdgeInsets.all(15.h),
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/$icon.svg",
                  height: 40.h,
                  width: 40.h,
                  color: white,
                ),
                Text(
                  iconname,
                  style: roboto(white, 16.sp, FontWeight.normal),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

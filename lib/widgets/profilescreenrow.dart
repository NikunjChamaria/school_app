// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leaderboard/constants/color.dart';
import 'package:leaderboard/widgets/textsytle.dart';
import 'package:leaderboard/widgets/widthspacer.dart';

class ProfileScreenRow extends StatelessWidget {
  final String iconname;
  final String name;

  const ProfileScreenRow(
      {super.key, required this.iconname, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "assets/$iconname.svg",
                color: white,
                height: 30.h,
                width: 30.h,
              ),
              WidthSpacer(width: 10.h),
              Text(
                name,
                style: roboto(white, 18.sp, FontWeight.normal),
              )
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: white,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaderboard/constants/color.dart';
import 'package:leaderboard/widgets/heightspacer.dart';
import 'package:leaderboard/widgets/textsytle.dart';

class ProfileDetailColumn extends StatelessWidget {
  final String detailname;
  final String detailvalue;
  const ProfileDetailColumn(
      {super.key, required this.detailname, required this.detailvalue});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          detailname,
          style: roboto(white, 22.sp, FontWeight.bold),
        ),
        HeightSpacer(height: 5.h),
        Text(
          detailvalue,
          style: roboto(white, 20.sp, FontWeight.normal),
        ),
        HeightSpacer(height: 5.h),
      ],
    );
  }
}

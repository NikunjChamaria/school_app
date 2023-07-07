import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaderboard/constants/color.dart';
import 'package:leaderboard/model/competionmodel.dart';
import 'package:leaderboard/widgets/heightspacer.dart';
import 'package:leaderboard/widgets/textsytle.dart';

class CompetitionsWidget extends StatelessWidget {
  final CompetionModel competionModel;
  const CompetitionsWidget({super.key, required this.competionModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.h),
      child: Container(
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.all(Radius.circular(20.h)),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            children: [
              Container(
                  height: 200.h,
                  width: double.maxFinite.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.h))),
                  child: ClipRRect(
                      child: Image.asset(
                    "${competionModel.imagepath}",
                    fit: BoxFit.cover,
                  ))),
              HeightSpacer(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${competionModel.name}",
                    style: roboto(white, 20.sp, FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Start Date :${competionModel.start}",
                        style: roboto(white, 16.sp, FontWeight.normal),
                      ),
                      Text(
                        "End Date :${competionModel.end}",
                        style: roboto(white, 16.sp, FontWeight.normal),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

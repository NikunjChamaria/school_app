import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaderboard/constants/color.dart';
import 'package:leaderboard/model/inspirationmodel.dart';
import 'package:leaderboard/widgets/textsytle.dart';
import 'package:leaderboard/widgets/widthspacer.dart';

class PageCard extends StatelessWidget {
  final InspirationModel inspirationModel;
  const PageCard({super.key, required this.inspirationModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Container(
        padding: EdgeInsets.all(20.h),
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.all(Radius.circular(20.h)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                    radius: 20.h,
                    backgroundImage:
                        AssetImage("${inspirationModel.profilepath}")),
                WidthSpacer(width: 10.h),
                Text(
                  "${inspirationModel.name}, ${inspirationModel.age}",
                  style: roboto(white, 14.sp, FontWeight.bold),
                )
              ],
            ),
            Container(
                padding: EdgeInsets.only(top: 10.h),
                height: 150.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.h))),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.h)),
                    child: Image.asset(
                      "${inspirationModel.imagepath}",
                      fit: BoxFit.cover,
                    ))),
            Padding(
              padding: EdgeInsets.only(top: 10.0.h, bottom: 15.h),
              child: Text(
                "${inspirationModel.description}",
                style: roboto(white, 14.sp, FontWeight.normal),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "House - ${inspirationModel.house}",
                      style: roboto(white, 14.sp, FontWeight.normal),
                    ),
                    Text(
                      "School - ${inspirationModel.school}",
                      style: roboto(white, 14.sp, FontWeight.normal),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.favorite_outline,
                      color: Colors.pinkAccent,
                    ),
                    Text(
                      "${inspirationModel.upvotes} upvotes",
                      style: roboto(white, 14.sp, FontWeight.normal),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

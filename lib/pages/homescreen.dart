// ignore_for_file: deprecated_member_use

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:leaderboard/constants/color.dart';
import 'package:leaderboard/data/pagedata.dart';
import 'package:leaderboard/pages/profilescreen.dart';
import 'package:leaderboard/widgets/competionwidget.dart';

import 'package:leaderboard/widgets/page_card.dart';
import 'package:leaderboard/widgets/search.dart';
import 'package:leaderboard/widgets/textsytle.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  TextEditingController search = TextEditingController();
  PageController pageController = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: 50.h, bottom: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello ${curruser.name!.substring(0, curruser.name!.indexOf(" "))}!",
                      style: roboto(Colors.orange, 30.sp, FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.snackbar("Routing", "Going to Profile Page",
                            colorText: white);
                        Get.to(() => const ProfileScreen());
                      },
                      child: CircleAvatar(
                        radius: 30.h,
                        backgroundImage: const CachedNetworkImageProvider(
                            "https://www.goodmorningimagesdownload.com/wp-content/uploads/2021/12/Best-Quality-Profile-Images-Pic-Download-2023.jpg"),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Get.snackbar("Search Bar", "To search in app");
                  },
                  child: Search(controller: search)),
              Padding(
                padding: EdgeInsets.only(
                    top: 50.h, bottom: 10.h, left: 20.h, right: 20.h),
                child: Text(
                  "Inspiration",
                  style: roboto(white, 24.sp, FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0.h, right: 20.h),
                child: Text(
                  "View the recent top performances",
                  style: roboto(white, 14.sp, FontWeight.w300),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: SizedBox(
                  height: 360.h,
                  child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: pageController,
                      itemCount: inspirationList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.snackbar(
                                "Top Performances", "Page view of the details",
                                colorText: white);
                          },
                          child: PageCard(
                              inspirationModel: inspirationList[index]),
                        );
                      }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 30.h, bottom: 10.h, left: 20.h, right: 20.h),
                child: Text(
                  "Attention!",
                  style: roboto(white, 24.sp, FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0.h, right: 20.h),
                child: Text(
                  "Pull up your socks for the upcoming competition",
                  style: roboto(white, 14.sp, FontWeight.w300),
                ),
              ),
              ListView.builder(
                  itemCount: competionlist.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.snackbar("Competitions", "List of competitions",
                            colorText: white);
                      },
                      child: CompetitionsWidget(
                          competionModel: competionlist[index]),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

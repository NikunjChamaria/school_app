// ignore_for_file: deprecated_member_use

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:leaderboard/constants/color.dart';
import 'package:leaderboard/data/pagedata.dart';
import 'package:leaderboard/pages/leaderboard.dart';
import 'package:leaderboard/widgets/heightspacer.dart';
import 'package:leaderboard/widgets/prodeiledeatilcolumn.dart';
import 'package:leaderboard/widgets/profileicons.dart';
import 'package:leaderboard/widgets/profilescreenrow.dart';
import 'package:leaderboard/widgets/textsytle.dart';
import 'package:leaderboard/widgets/widthspacer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: 50.h, left: 20.h, right: 20.h, bottom: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 35.h,
                      backgroundImage: const CachedNetworkImageProvider(
                          "https://www.goodmorningimagesdownload.com/wp-content/uploads/2021/12/Best-Quality-Profile-Images-Pic-Download-2023.jpg"),
                    ),
                    WidthSpacer(width: 10.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${curruser.name}",
                          style: roboto(white, 26.sp, FontWeight.bold),
                        ),
                        Text(
                          "${curruser.house} House",
                          style: roboto(white, 22.sp, FontWeight.normal),
                        )
                      ],
                    )
                  ],
                ),
                HeightSpacer(height: 10.h),
                Divider(
                  color: white,
                  thickness: 2.h,
                ),
                HeightSpacer(height: 10.h),
                ProfileDetailColumn(
                    detailname: "Aadhar Number:",
                    detailvalue:
                        "XXXX XXXX XXXX ${curruser.aadhar!.substring(curruser.name!.length)}"),
                ProfileDetailColumn(
                    detailname: "Phone Number:",
                    detailvalue: "${curruser.phone}"),
                ProfileDetailColumn(
                    detailname: "School Name:",
                    detailvalue: "${curruser.school}"),
                HeightSpacer(height: 10.h),
                Divider(
                  color: white,
                  thickness: 2.h,
                ),
                HeightSpacer(height: 30.h),
                Row(
                  children: [
                    ProfileIcon(
                        ontap: () {},
                        iconname: "Notifications",
                        icon: "notification"),
                    ProfileIcon(
                        ontap: () {
                          Get.to(() => const LeaderboardScreen());
                        },
                        iconname: "Leaderboard",
                        icon: "leaderboard"),
                    ProfileIcon(
                        ontap: () {}, iconname: "Settings", icon: "setting")
                  ],
                ),
                HeightSpacer(height: 30.h),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.h)),
                      color: primary),
                  child: Padding(
                    padding: EdgeInsets.all(20.h),
                    child: const Column(
                      children: [
                        ProfileScreenRow(
                            iconname: "home", name: "Contribution"),
                        Divider(
                          color: white,
                          thickness: 1,
                        ),
                        ProfileScreenRow(
                            iconname: "wallet", name: "View Plans"),
                        Divider(
                          color: white,
                          thickness: 1,
                        ),
                        ProfileScreenRow(iconname: "share", name: "Share")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: white,
            unselectedItemColor: white,
            backgroundColor: background,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: SvgPicture.asset(
                  "assets/home.svg",
                  width: 40.h,
                  height: 40.h,
                  color: white,
                ),
              ),
              BottomNavigationBarItem(
                label: "Learn",
                icon: SvgPicture.asset(
                  "assets/book.svg",
                  width: 40.h,
                  height: 40.h,
                  color: white,
                ),
              ),
              BottomNavigationBarItem(
                label: "Competitions",
                icon: SvgPicture.asset(
                  "assets/trophy.svg",
                  width: 40.h,
                  height: 40.h,
                  color: white,
                ),
              )
            ]));
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaderboard/constants/color.dart';
import 'package:leaderboard/data/pagedata.dart';
import 'package:leaderboard/widgets/heightspacer.dart';
import 'package:leaderboard/widgets/textsytle.dart';
import 'package:leaderboard/widgets/widthspacer.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  final List<String> barColors = ["Blue", "Red", "Green", "Yellow"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:
              EdgeInsets.only(left: 20.h, right: 20.h, bottom: 20.h, top: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Leaderboard",
                    style: roboto(white, 25.sp, FontWeight.bold),
                  ),
                  CircleAvatar(
                    radius: 35.h,
                    backgroundImage: const CachedNetworkImageProvider(
                        "https://www.goodmorningimagesdownload.com/wp-content/uploads/2021/12/Best-Quality-Profile-Images-Pic-Download-2023.jpg"),
                  ),
                ],
              ),
              HeightSpacer(height: 20.h),
              Text(
                "This Week:",
                style: roboto(Colors.grey.shade400, 24.sp, FontWeight.normal),
              ),
              ListView.builder(
                itemCount: houselist.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 3.h, bottom: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "0${index + 1}",
                              style: roboto(white, 22.sp, FontWeight.normal),
                            ),
                            WidthSpacer(width: 20.h),
                            Text(
                              "${houselist[index].house} House",
                              style: roboto(white, 22.sp, FontWeight.normal),
                            ),
                          ],
                        ),
                        Text(
                          "${houselist[index].points}pts",
                          style: roboto(white, 22.sp, FontWeight.normal),
                        ),
                      ],
                    ),
                  );
                },
              ),
              HeightSpacer(height: 20.h),
              Text(
                "Current Team Positions:",
                style: roboto(Colors.grey.shade400, 24.sp, FontWeight.normal),
              ),
              HeightSpacer(height: 20.h),
              SizedBox(
                height: 300.h,
                width: double.maxFinite,
                child: BarChart(
                  BarChartData(
                    maxY: 30,
                    borderData: FlBorderData(
                      show: true,
                      border: const Border(
                        left: BorderSide(color: Colors.white, width: 2),
                        bottom: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                    titlesData: FlTitlesData(
                        topTitles: const AxisTitles(),
                        leftTitles: const AxisTitles(),
                        rightTitles: const AxisTitles(),
                        show: true,
                        bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return SideTitleWidget(
                              axisSide: AxisSide.top,
                              child: Text(
                                barColors[value.toInt()],
                                style: roboto(white, 14, FontWeight.bold),
                              ),
                            );
                          },
                        ))),
                    gridData: const FlGridData(show: false),
                    barGroups: List.generate(housedata.length, (index) {
                      final points =
                          housedata[index]["points"].toDouble() / 100;
                      return BarChartGroupData(
                        x: index,
                        barRods: [
                          BarChartRodData(
                            borderRadius: BorderRadius.zero,
                            width: 50,
                            toY: points,
                            color: [
                              Colors.red,
                              Colors.blue,
                              Colors.yellow,
                              Colors.green
                            ][index],
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ),
              HeightSpacer(height: 20.h),
              Text(
                "Your Contribution to ${curruser.house} House:",
                style: roboto(white, 24.sp, FontWeight.normal),
              ),
              Text(
                "160pts",
                style: roboto(white, 24.sp, FontWeight.w300),
              ),
              HeightSpacer(height: 20.h),
              Center(
                child: Text(
                  "Keep it Up!",
                  style: roboto(white, 24.sp, FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

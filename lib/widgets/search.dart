// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leaderboard/constants/color.dart';
import 'package:leaderboard/widgets/textsytle.dart';

class Search extends StatelessWidget {
  final TextEditingController controller;
  const Search({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 0.6, color: white),
            color: secondary,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: TextField(
          controller: controller,
          style: roboto(white, 14, FontWeight.normal),
          decoration: InputDecoration(
              icon: SvgPicture.asset(
                "assets/search.svg",
                height: 30,
                width: 30,
                color: white,
              ),
              border: InputBorder.none,
              hintStyle: roboto(white, 20, FontWeight.normal),
              focusedBorder: InputBorder.none,
              hintText: "Search competition"),
        ),
      ),
    );
  }
}

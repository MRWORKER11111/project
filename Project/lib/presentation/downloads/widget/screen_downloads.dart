import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const String url1 = "https://images.app.goo.gl/3kRNRNUQvH8PvXYt8";
    const String url2 = "https://images.app.goo.gl/zcYRCXQmVL1usLbu6";

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Appbarwidget(
          title: 'Downloads',
        ),
      ),
      body: ListView(
        children: [
          const Row(
            children: [
              widhth,
              Icon(
                Icons.settings,
                color: kwhitecolor,
              ),
              widhth,
              Text(
                'smart downloads',
              ),
            ],
          ),
          const Text("Introducing downloads for you"),
          const Text(
            "We will download a personalized selection of videos and shows for you, so there is always something to watch in your device",
          ),
          Container(
            width: size.width,
            height: size.width,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.37,
                ),
                Transform.rotate(
                  angle: 38 * pi / 180,
                  child: Container(
                    width: size.width * 0.4,
                    height: size.width * 0.58,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(url1), fit: BoxFit.fill),
                    ),
                  ),
                )
              ],
            ),
          ),
          MaterialButton(
            color: kbuttoncolorblue,
            onPressed: () {},
            child: const Text(
              'Set up',
              style: TextStyle(
                color: kwhitecolor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MaterialButton(
            color: kbuttoncolorwhite,
            onPressed: () {},
            child: const Text(
              'See what you can download',
              style: TextStyle(
                color: kcolorblack,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

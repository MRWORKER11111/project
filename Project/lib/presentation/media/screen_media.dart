import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/presentation/media/commingsoonwidget.dart';
import 'package:project/presentation/widgets/appbar_widget.dart';

class ScreenMedia extends StatelessWidget {
  const ScreenMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 10,
          left: 10,
        ),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: AppBar(
              elevation: 0,
              title: Appbarwidget(title: "Media"),
              bottom: TabBar(
                isScrollable: true,
                dividerHeight: 0,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
                tabAlignment: TabAlignment.start,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 0,
                indicator: BoxDecoration(
                    color: kwhitecolor,
                    borderRadius: BorderRadius.circular(50)),
                tabs: [
                  Tab(
                    text: "    🍿 Comming soon    ",
                  ),
                  Tab(
                    text: " 👀 Everyone's & Watching   ",
                  )
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: TabBarView(
              children: [
                buildCommingSoon(context),
                buildEveryonesWatching(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

buildEveryonesWatching(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;

  return ListView(
    children: [
      Text(
        "LOREM  IPSUM",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      SizedBox(
        height: 4,
      ),
      Text(
        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        style: TextStyle(color: Colors.grey),
      ),
      SizedBox(
        height: 30,
      ),
      Stack(
        children: [
          SizedBox(
            width: screenSize.width,
            height: 200,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLbq_UaC2tgYp_j27NJZZ3s8E4WwVO9FpqUg&s",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 6,
            right: 6,
            child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.5),
              radius: 19,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.volume_off,
                  color: kwhitecolor,
                  size: 16.3,
                ),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          mediabuttons(
            icon1: Icons.send_sharp,
            iconlabel: "Share",
            angle: -pi / 15.0,
          ),
          mediabuttons(
            icon1: Icons.add,
            iconlabel: "My List",
            angle: 0,
          ),
          mediabuttons(
            icon1: Icons.play_arrow,
            iconlabel: "Play",
            angle: 0,
          )
        ],
      )
    ],
  );
}

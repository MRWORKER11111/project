import 'package:flutter/material.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/presentation/media/Everyonewatching_widget.dart';
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

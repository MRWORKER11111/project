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
          right: 50,
        ),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              
              elevation: 0,
              title: Appbarwidget(title: "Media"),
              bottom: TabBar(
                
                  dividerHeight: 0,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: kwhitecolor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  tabs: [
                    Tab(
                      text: "🍿 Comming soon",
                    ),
                    Tab(
                      text: "👀 Everyone's & Watching",
                    )
                  ]),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: TabBarView(
              children: [
                buildCommingSoon(context),
                buildEveryonesWatching(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

buildEveryonesWatching() {
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
      )
    ],
  );
}

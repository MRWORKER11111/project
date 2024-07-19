import 'package:flutter/material.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/presentation/widgets/appbar_widget.dart';

class ScreenMedia extends StatelessWidget {
  const ScreenMedia({super.key});

  @override
  Widget build(BuildContext context) {
    double bodywidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
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
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: kwhitecolor,
                  borderRadius: BorderRadius.circular(30),
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
        body: TabBarView(
          children: [
            builCommingSoon(),
            buildEveryonesWatching(bodywidth * 7),
          ],
        ),
      ),
    );
  }
}

builCommingSoon() {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: ListView(
      children: [
        Container(
          width: 4,
          height: 500,
          color: Colors.cyan,
        )
      ],
    ),
  );
}

buildEveryonesWatching(double width) {
  return ListView(
    children: [
      Row(
        children: [
          SizedBox(
            width: 50,
          ),
          Container(
            width: width,
            height: 50,
          ),
        ],
      )
    ],
  );
}

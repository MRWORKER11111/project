import 'package:flutter/material.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/presentation/widgets/appbar_widget.dart';

class ScreenMedia extends StatelessWidget {
  const ScreenMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            title: Appbarwidget(title: "Media"),
            bottom: TabBar(indicator: BoxDecoration(color: kwhitecolor), tabs: [
              Tab(
                text: "🍿 Comming soon",
              ),
              Tab(
                text: "👀 Everyone's & Watching",
              )
            ]),
          ),
        ),
      ),
    );
  }
}

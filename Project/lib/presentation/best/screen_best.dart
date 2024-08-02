import 'package:flutter/material.dart';
import 'package:project/presentation/best/widgets/video_list_item.dart';

class Screenbest extends StatelessWidget {
  Screenbest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) => VideoListItem(
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}

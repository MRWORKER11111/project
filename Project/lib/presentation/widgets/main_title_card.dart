import 'package:flutter/material.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/widgets/main_card.dart';
import 'package:project/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  final List<String> posterurlList;
  const MainTitleCard({
    super.key,
    required this.title, required this.posterurlList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 1),
          child: MainTitle(
            title: title,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        LimitedBox(
          maxHeight: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              posterurlList.length,
              (index) =>  MainCard(ImageUrl: posterurlList[index],),
            ),
          ),
        ),
        kheight1,
      ],
    );
  }
}

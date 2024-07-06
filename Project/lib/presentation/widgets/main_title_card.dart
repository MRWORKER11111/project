import 'package:flutter/material.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/widgets/main_card.dart';
import 'package:project/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({
    super.key,
    required this.title,
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
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => const MainCard(),
            ),
          ),
        ),
        kheight1,
      ],
    );
  }
}

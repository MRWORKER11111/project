import 'package:flutter/material.dart';
import 'package:project/presentation/search/widgets/search_result.dart';
import 'package:project/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: MainTitle(
            title: "Released in the past year",
          ),
        ),
        LimitedBox(
          maxHeight: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => MainCard(),
            ),
          ),
        )
      ],
    );
  }
}

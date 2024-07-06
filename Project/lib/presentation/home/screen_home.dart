import 'package:flutter/material.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/widgets/main_card.dart';
import 'package:project/presentation/widgets/main_title.dart';

class Screenhome extends StatelessWidget {
  const Screenhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: MainTitle(
              title: "Released in the past year",
            ),
          ),
          kheight,
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
      ),
    );
  }
}

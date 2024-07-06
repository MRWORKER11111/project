import 'package:flutter/material.dart';
import 'package:project/presentation/home/number_card.dart';
import 'package:project/presentation/widgets/main_title.dart';
import 'package:project/presentation/widgets/main_title_card.dart';

class Screenhome extends StatelessWidget {
  const Screenhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainTitleCard(
                title: "Released in The Past Year",
              ),
              MainTitleCard(
                title: "Trending Now",
              ),
              special_title_card(),
              MainTitleCard(
                title: "Title 3",
              ),
              MainTitleCard(
                title: "The Best",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class special_title_card extends StatelessWidget {
  const special_title_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: "Top 10 In India Today",
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
              (index) => NumberCard(
                index: index,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

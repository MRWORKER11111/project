import 'package:flutter/material.dart';
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
                title: "Trending",
              ),
              MainTitleCard(
                title: "Title 3",
              ),
              MainTitleCard(
                title: "Title 4",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

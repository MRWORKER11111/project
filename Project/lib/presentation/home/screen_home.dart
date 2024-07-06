import 'package:flutter/material.dart';
import 'package:project/presentation/widgets/main_title_card.dart';

class Screenhome extends StatelessWidget {
  const Screenhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MainTitleCard(),
          MainTitleCard(),
        ],
      ),
    );
  }
}

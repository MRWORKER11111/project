import 'package:flutter/material.dart';
import 'package:project/core/constants.dart';

class Appbarwidget extends StatelessWidget {
  const Appbarwidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widhth,
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
        ),
        widhth,
        Container(
          width: 25,
          height: 25,
          color: Colors.blue,
        ),
        widhth,
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project/core/colors/colors.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: kwhitecolor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

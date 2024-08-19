
import 'package:flutter/material.dart';

class mediabuttons extends StatelessWidget {
  final IconData icon1;
  final iconlabel;
  final double iconSize;
  final double heightbetween;

  mediabuttons({
    super.key,
    required this.icon1,
    required this.iconlabel,
    required this.iconSize,
    required this.heightbetween,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: heightbetween * .8,
        ),
        Icon(
          icon1,
          color: const Color.fromARGB(255, 216, 216, 216),
          weight: 1,
          size: iconSize,
        ),
        SizedBox(
          height: heightbetween,
        ),
        Text(
          iconlabel,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w900,
            fontSize: 7,
          ),
        )
      ],
    );
  }
}

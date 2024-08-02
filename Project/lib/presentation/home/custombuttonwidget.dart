import 'package:flutter/material.dart';
import 'package:project/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final Color iconcolor;
  final String iconlabel;
  const CustomButtonWidget({
    super.key,
    required this.icon,
    required this.iconlabel,
    required this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: iconcolor,
        ),
        Text(
          iconlabel,
          style: TextStyle(
            color: kwhitecolor,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}

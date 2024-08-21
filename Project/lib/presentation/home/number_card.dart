import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/core/colors/colors.dart';

class NumberCard extends StatelessWidget {
  final int index;
  final String imageUrl3;
  const NumberCard({super.key, required this.index, required this.imageUrl3});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 35,
            ),
            Container(
              width: 120,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                image: DecorationImage(
                  image: NetworkImage(
                // imageUrl3
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY9ySzivdh9z9BRbQ0PGDiYbvkVFRkrSirvQ&s",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 67,
          child: BorderedText(
            strokeColor: kwhitecolor,
            strokeWidth: 2,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 100,
                  color: Colors.black,
                  fontFamily: GoogleFonts.openSans().fontFamily),
            ),
          ),
        )
      ],
    );
  }
}

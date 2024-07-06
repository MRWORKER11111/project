import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
      ),
      child: Container(
        width: 120,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          image: DecorationImage(
            image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY9ySzivdh9z9BRbQ0PGDiYbvkVFRkrSirvQ&s",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

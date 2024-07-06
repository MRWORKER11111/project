import 'package:flutter/material.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/widgets/main_title.dart';

final List<String> imageList = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8txrGEytl7a4iztKJbzeERdUmUcJl61CneQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY9ySzivdh9z9BRbQ0PGDiYbvkVFRkrSirvQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvFAO85i_zS0sDQIzUnj5_0GWwTtxeWpyMnw&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUWTxRA7IAIDPkiTYsZcftPYHWI2RvRflZqw&s",
  "https://media.geeksforgeeks.org/wp-content/uploads/20230406152358/CN-(1).jpg"
];

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: 'Best & Best'),
        kheight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.2 / 1.5,
            children: List.generate(
              20,
              (index) => MainCard1(),
            ),
          ),
        ),
      ],
    );
  }
}

class MainCard1 extends StatelessWidget {
  const MainCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageList[0]),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}

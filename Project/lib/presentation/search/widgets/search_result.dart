import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/application/search/search_bloc.dart';
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
          child:
              BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1 / 1.4,
              children: List.generate(10, (index) {
                // final movie = state.searchResultList[index];
                return MainCard1(
                  // imageurl:imageappendurl+ movie.posterPath,
                  imageurl: imageList[1],
                );
              }),
            );
          }),
        ),
      ],
    );
  }
}

class MainCard1 extends StatelessWidget {
  final String imageurl;
  const MainCard1({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageurl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}

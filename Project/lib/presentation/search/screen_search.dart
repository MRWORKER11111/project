import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/application/search/search_bloc.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/search/widgets/search_ideal.dart';
import 'package:project/presentation/search/widgets/search_result.dart';

class Screensearch extends StatelessWidget {
  const Screensearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      {
        BlocProvider.of<SearchBloc>(context).add(const Initialize());
      }
      ;
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.3),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  BlocProvider.of<SearchBloc>(context)
                      .add(SearchMovie(movieQuery: value));
                },
              ),
              kheight,
              // Expanded(child: const SearchIdeal()),
              Expanded(child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                if (state.searchResultList.isEmpty) {
                  return const SearchIdeal();
                } else {
                  return const SearchResultWidget();
                }
              }))
            ],
          ),
        ),
      ),
    );
  }
}

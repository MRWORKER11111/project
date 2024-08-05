import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/application/search/search_bloc.dart';
import 'package:project/core/constants.dart';
import 'package:project/domain/core/debounce/debounds.dart';
import 'package:project/presentation/search/widgets/search_ideal.dart';
import 'package:project/presentation/search/widgets/search_result.dart';

class Screensearch extends StatelessWidget {
   Screensearch({super.key});

final _debouncer=Debouncer(milliseconds: 1*1000);


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
                  if (value.isEmpty){
                    return;
                  }
                  _debouncer.run((){
                    BlocProvider.of<SearchBloc>(context)
                      .add(SearchMovie(movieQuery: value));
                  });
                  
                },
              ),
              kheight,
            
              Expanded(child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                if (state.searchResultList.isEmpty) {
                  return const SearchIdeal();
                } else if(state.searchResultList.isNotEmpty){
                  return const SearchResultWidget();
                }else{
                  return Container(
                    color: Colors.white24,
                  );
                }
              }))
            ],
          ),
        ),
      ),
    );
  }
}

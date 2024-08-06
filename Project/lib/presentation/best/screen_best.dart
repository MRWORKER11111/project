import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/application/bloc/fast_laugh_bloc.dart';
import 'package:project/presentation/best/widgets/video_list_item.dart';

class Screenbest extends StatelessWidget {
  Screenbest({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isloading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.iserror) {
              return const Center(
                child: Text('error while getting list in best'),
              );
            } else if (state.videolist.isEmpty) {
              return const Center(
                child: Text('video list is empty'),
              );
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                  10,
                  (index) => VideoListItem(
                    index: index,
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

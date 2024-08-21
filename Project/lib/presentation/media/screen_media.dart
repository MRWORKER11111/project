import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project/application/hotandnew/hotandnew_bloc.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/media/Everyonewatching_widget.dart';
import 'package:project/presentation/media/commingsoonwidget.dart';
import 'package:project/presentation/widgets/appbar_widget.dart';

class ScreenMedia extends StatelessWidget {
  const ScreenMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 10,
          left: 10,
        ),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: AppBar(
              elevation: 0,
              title: Appbarwidget(title: "Media"),
              bottom: TabBar(
                isScrollable: true,
                dividerHeight: 0,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
                tabAlignment: TabAlignment.start,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 0,
                indicator: BoxDecoration(
                    color: kwhitecolor,
                    borderRadius: BorderRadius.circular(50)),
                tabs: [
                  Tab(
                    text: "    🍿 Comming soon    ",
                  ),
                  Tab(
                    text: " 👀 Everyone's & Watching   ",
                  )
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child:const TabBarView(
              children:  [
                commingsoonList(
                  key: Key('comming_soon'),
                ),
                everyoneisWatchingList(
                  key: Key('everyoneis_watching'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class commingsoonList extends StatelessWidget {
  const commingsoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context).add(const LoaddataCommingSoon());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotandnewBloc>(context)
            .add(const LoaddataCommingSoon());
      },
      child: BlocBuilder<HotandnewBloc, HotandnewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(
                strokeWidth: 2,
              ),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('error while loading comming soon list'),
            );
          } else if (state.commingsoonList.isEmpty) {
            return const Center(
              child: Text('comming soon list is empty'),
            );
          } else {
            return ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 0,
                );
              },
              itemCount: state.commingsoonList.length,
              itemBuilder: (BuildContext context, int index) {
                final movie = state.commingsoonList[index];
                if (movie.id == null) {
                  return const SizedBox();
                }
                //log('screenmedia 147  ' + movie.releaseDate!);
                //log('screenmedia  150  ' + FormatedDate);
                String hMonth = '';
                String hDay = '';
                try {
                  final _date = DateTime.parse(movie.releaseDate!);
                  final FormatedDate = DateFormat.MMMMd('en_US').format(_date);
                  hMonth = FormatedDate.split(' ')
                      .first
                      .substring(0, 3)
                      .toUpperCase();
                  hDay = movie.releaseDate!.split('-')[1];
                } catch (_) {
                  hMonth = '';
                  hDay = '';
                }
                return CommingSoonWidget(
                  id: movie.id.toString(),
                  month: hMonth,
                  day: hDay,
                  posterpath: movie.posterPath ?? 'No posterpath',
                  movieName: movie.originalTitle ?? 'No title',
                  Description: movie.overview ?? 'No description',
                );
              },
            );
          }
        },
      ),
    );
  }
}

class everyoneisWatchingList extends StatelessWidget {
  const everyoneisWatchingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context)
          .add(const LoaddataEveryoneswatching());
    });
    return RefreshIndicator(
      onRefresh: () async {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          BlocProvider.of<HotandnewBloc>(context)
              .add(const LoaddataCommingSoon());
        });
      },
      child: BlocBuilder<HotandnewBloc, HotandnewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(
                strokeWidth: 2,
              ),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('error while loading comming soon list'),
            );
          } else if (state.everyoneisWatchingList.isEmpty) {
            return const Center(
              child: Text('comming soon list is empty'),
            );
          } else {
            return ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 0,
                );
              },
              itemCount: state.everyoneisWatchingList.length,
              itemBuilder: (BuildContext context, int index) {
                final movie = state.everyoneisWatchingList[index];
                if (movie.id == null) {
                  return const SizedBox();
                }

                final tv = state.everyoneisWatchingList[index];
                return EveryonesWatchingWidget(
                  posterpath: '$imageappendurl${tv.posterPath}',
                  movieName: tv.originalName ?? 'no Movie Name',
                  Description: tv.overview ?? 'No Description',
                );
              },
            );
          }
        },
      ),
    );
  }
}

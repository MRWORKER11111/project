import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/application/home/home_bloc.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/home/backgroundcard.dart';
import 'package:project/presentation/home/number_card.dart';
import 'package:project/presentation/widgets/main_title.dart';
import 'package:project/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class Screenhome extends StatelessWidget {
  const Screenhome({super.key});

  final String mainImage =
      "https://i.pinimg.com/originals/33/e5/db/33e5dbd84db1702df446b195ce049218.jpg";
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const GetHomeScreenData());
    });
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: scrollnotifier,
          builder: (BuildContext context, index, _) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  //  print(direction);
                  if (direction == ScrollDirection.reverse) {
                    scrollnotifier.value = false;
                  } else if (ScrollDirection == ScrollDirection.forward) {
                    scrollnotifier.value = true;
                  }
                  // print('2');
                  // print(direction);
                  return true;
                },
                child: Stack(
                  children: [
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if (state.isloading) {
                          return Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                            ),
                          );
                        } else if (state.isError) {
                          return const Text(
                            'Error while getting data',
                            style: TextStyle(color: Colors.white),
                          );
                        }
      
                        // else
      
                        //pastyear
                        final _releasesPastYear =
                            state.pastyearmovielist.map((m) {
                          return '$imageappendurl${m.posterPath}';
                        }).toList();
                        _releasesPastYear.shuffle();
      
                        //trending
                        final _trending = state.trendingmovielist.map((m) {
                          return '$imageappendurl${m.posterPath}';
                        }).toList();
      
                        _trending.shuffle();
                        //Tense drama
                        final _tenseDrama = state.tensedramasmovielist.map((m) {
                          return '$imageappendurl${m.posterPath}';
                        }).toList();
                        _tenseDrama.shuffle();
      
                        //the best
                        final _theBest = state.southIndianmovielist.map((m) {
                          return '$imageappendurl${m.posterPath}';
                        }).toList();
                        _theBest.shuffle();
      
                      //top 10 TV shows
                      final _Top10 = state.trendingTVlist.map((m) {
                          return '$imageappendurl${m.posterPath}';
                        }).toList();
                        
      
                        return ListView(
                          children: [
                            Backgroundcard(),
                            backgroundcardicons(),
                            MainTitleCard(
                              title: "Released in The Past Year",
                              posterurlList: _releasesPastYear,
                            ),
                            MainTitleCard(
                              title: "Trending Now",
                              posterurlList: _trending,
                            ),
                            special_title_card(
                              imageUrList:_Top10 ,
                            ),
                            MainTitleCard(
                              title: "Title 3",
                              posterurlList: _tenseDrama,
                            ),
                            MainTitleCard(
                              title: "The Best",
                              posterurlList: _theBest,
                            ),
                            kheight
                          ],
                        );
                      },
                    ),
                    scrollnotifier.value == true
                        ? AnimatedContainer(
                            duration: Duration(milliseconds: 1000),
                            width: double.infinity,
                            height: 90,
                            color: Colors.black.withOpacity(0.3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrXZhVRcwZ8Z6nK6uQxBoSFmlsrH_nBhI-Bg&s",
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    widhth,
                                    Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "TV Shows",
                                      style: khometitletextstyle,
                                    ),
                                    Text(
                                      "Photos",
                                      style: khometitletextstyle,
                                    ),
                                    Text(
                                      "Categories",
                                      style: khometitletextstyle,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        : kheight
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class special_title_card extends StatelessWidget {
  final List<String> imageUrList;
  const special_title_card({
    super.key,
    required this.imageUrList,
  });

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: "Top 10 In India Today",
        ),
        SizedBox(
          height: 3,
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              imageUrList.length,
              (index) => NumberCard(
                index: index,
                imageUrl3: imageUrList[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

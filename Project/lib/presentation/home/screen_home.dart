import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollnotifier,
        builder: (BuildContext context, index, _) {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;

                if (direction == ScrollDirection.reverse) {
                  scrollnotifier.value = false;
                } else if (ScrollDirection == ScrollDirection.forward) {
                  scrollnotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: [
                      Backgroundcard(),
                      backgroundcardicons(),
                      MainTitleCard(
                        title: "Released in The Past Year",
                      ),
                      MainTitleCard(
                        title: "Trending Now",
                      ),
                      special_title_card(),
                      MainTitleCard(
                        title: "Title 3",
                      ),
                      MainTitleCard(
                        title: "The Best",
                      ),
                      kheight
                    ],
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
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWI7clES9W75CGV-Bcxj248JnTz50rmHZS0Q&s",
                                      width: 45,
                                      height: 45,
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
    );
  }
}

class special_title_card extends StatelessWidget {
  const special_title_card({
    super.key,
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
              10,
              (index) => NumberCard(
                index: index,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/presentation/home/custombuttonwidget.dart';
import 'package:project/presentation/home/number_card.dart';
import 'package:project/presentation/widgets/main_title.dart';
import 'package:project/presentation/widgets/main_title_card.dart';

class Screenhome extends StatelessWidget {
  const Screenhome({super.key});

  final String mainImage =
      "https://i.pinimg.com/originals/33/e5/db/33e5dbd84db1702df446b195ce049218.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 2.0, top: 10),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: NetworkImage(mainImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              child: Container(
                width: double.infinity,
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButtonWidget(
                      icon: Icons.add,
                      iconcolor: kwhitecolor,
                      iconlabel: "My List",
                    ),
                    playButton(),
                    CustomButtonWidget(
                      icon: Icons.info_outline,
                      iconcolor: kbuttoncolorwhite,
                      iconlabel: "Info",
                    )
                  ],
                ),
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}

class playButton extends StatelessWidget {
  const playButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          kwhitecolor,
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ),
      icon: Icon(
        Icons.play_arrow,
        color: Colors.black,
        size: 30,
      ),
      label: Text(
        'Play',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
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

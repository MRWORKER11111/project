import 'dart:math';

import 'package:flutter/material.dart';

import 'package:project/core/colors/colors.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    _smartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: const Appbarwidget(
          title: 'Downloads',
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) => _widgetList[index],
        separatorBuilder: (context, index) => SizedBox(
          height: 25,
        ),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8txrGEytl7a4iztKJbzeERdUmUcJl61CneQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY9ySzivdh9z9BRbQ0PGDiYbvkVFRkrSirvQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvFAO85i_zS0sDQIzUnj5_0GWwTtxeWpyMnw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUWTxRA7IAIDPkiTYsZcftPYHWI2RvRflZqw&s",
    "https://media.geeksforgeeks.org/wp-content/uploads/20230406152358/CN-(1).jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context) * .6;
    return Column(
      children: [
        const Text(
          "Introducing downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kwhitecolor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          "We will download a personalized selection of\nvideos and shows for you, so there's\nalways something to watch in your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        kheight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.418,
                backgroundColor: Colors.grey.withOpacity(.5),
              ),
              Downloadswidget(
                margingot: EdgeInsets.only(left: 180, top: 54),
                imagegotlist: imageList[2],
                anglegot: 10,
                sizegot: Size(size.width * 0.39, size.height * 0.45),
                radiusgot: 5,
              ),
              Downloadswidget(
                margingot: EdgeInsets.only(right: 180, top: 54),
                imagegotlist: imageList[1],
                anglegot: -10,
                sizegot: Size(size.width * 0.39, size.height * 0.45),
                radiusgot: 5,
              ),
              Downloadswidget(
                anglegot: 0,
                margingot: EdgeInsets.only(top: 20),
                imagegotlist: imageList[0],
                sizegot: Size(size.width * 0.44, size.height * 0.53),
                radiusgot: 7,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: kbttnClrpurple,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Set up',
                style: TextStyle(
                  color: kwhitecolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        kheight1,
        SizedBox(
          width: size.width * .83,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: kbuttoncolorwhite,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'See what you can download',
                style: TextStyle(
                  color: kcolorblack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _smartDownloads extends StatelessWidget {
  const _smartDownloads();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widhth,
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings),
          color: kwhitecolor,
        ),
        widhth,
        Text(
          'smart downloads',
        ),
      ],
    );
  }
}

class Downloadswidget extends StatelessWidget {
  const Downloadswidget({
    super.key,
    required this.anglegot,
    required this.imagegotlist,
    required this.margingot,
    required this.sizegot,
    required this.radiusgot,
  });
  final String imagegotlist;
  final EdgeInsets margingot;
  final double anglegot;
  final Size sizegot;
  final double radiusgot;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margingot,
      child: Transform.rotate(
        angle: anglegot * pi / 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radiusgot),
          child: Container(
            width: sizegot.width,
            height: sizegot.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imagegotlist,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

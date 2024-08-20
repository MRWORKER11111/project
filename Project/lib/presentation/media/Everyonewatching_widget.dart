import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/media/widgets/mediabutton.dart';
import 'package:project/presentation/media/widgets/small_icon.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  final String posterpath;
  final String movieName;
  final String Description;
  const EveryonesWatchingWidget({
    super.key,
    required this.posterpath,
    required this.movieName,
    required this.Description,
  });

  @override
  Widget build(BuildContext context) {
    print('everyonewatching 23  ' + posterpath);
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(
              movieName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          Description,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: 30,
        ),
        Stack(
          children: [
            SizedBox(
              width: screenSize.width,
              height: 200,
              child: Image.network(
                posterpath,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 6,
              right: 6,
              child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.5),
                radius: 19,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.volume_off,
                    color: kwhitecolor,
                    size: 16.3,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    movieName,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.caveat(
                      textStyle: TextStyle(
                        fontSize: 40,
                        letterSpacing: -2,
                        fontWeight: FontWeight.w500,
                        height: 1
                      ),
                      
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Container(
              width: screenSize.width * .3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 2,
                      ),
                      Transform.rotate(
                        angle: -pi / 4.0,
                        child: Icon(
                          Icons.send_outlined,
                          color: const Color.fromARGB(255, 216, 216, 216),
                          weight: 1,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Share",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w900,
                          fontSize: 7,
                        ),
                      )
                    ],
                  ),
                  widhth,
                  mediabuttons(
                    icon1: Icons.add,
                    iconlabel: "My List",
                    iconSize: 20,
                    heightbetween: 4,
                  ),
                  widhth,
                  mediabuttons(
                    icon1: Icons.play_arrow,
                    iconlabel: "Play",
                    iconSize: 27,
                    heightbetween: 0,
                  ),
                  kheight20,
                ],
              ),
            ),
          ],
        ),
        kheight,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kheight,
            small_icon(),
            Text(
              movieName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              Description,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ],
    );
  }
}

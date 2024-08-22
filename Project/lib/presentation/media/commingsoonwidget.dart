import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/media/widgets/mediabutton.dart';
import 'package:project/presentation/media/widgets/small_icon.dart';
import 'package:project/presentation/media/widgets/videowidget.dart';

class CommingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterpath;
  final String movieName;
  final String Description;
  const CommingSoonWidget({
    super.key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterpath,
    required this.movieName,
    required this.Description,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    log('commingsonnwidget 30  ' + posterpath);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Date_in_sidebar(month: month, day: day),

        // Main Image
        Container(
          width: screenSize.width - 45 - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(
                  screenSize: screenSize,
                  posterpath: imageappendurl + posterpath),
              kheight20,
              moviename_remindme_info_Buttons(movieName: movieName),
              Text(
                "Coming on $day  ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 237, 236, 236)),
              ),
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
              )
            ],
          ),
        ),
      ],
    );
  }
}

class moviename_remindme_info_Buttons extends StatelessWidget {
  const moviename_remindme_info_Buttons({
    super.key,
    required this.movieName,
  });

  final String movieName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movieName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.caveat(
                  textStyle: const TextStyle(
                    fontSize: 40,
                    letterSpacing: -2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
              children: [
              mediabuttons(
                icon1: Icons.notifications_none_outlined,
                iconlabel: "Remind Me",
                iconSize: 20,
                heightbetween: 0,
              ),
              SizedBox(
                width: 15,
              ),
              mediabuttons(
                icon1: Icons.info_outlined,
                iconlabel: "info",
                iconSize: 20,
                heightbetween: 0,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Date_in_sidebar extends StatelessWidget {
  const Date_in_sidebar({
    super.key,
    required this.month,
    required this.day,
  });

  final String month;
  final String day;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            month,
            style: TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 184, 181, 181),
            ),
          ),
          Text(
            day,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

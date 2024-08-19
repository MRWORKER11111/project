import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/core/constants.dart';

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
    log(posterpath);
    return Row(
      children: [
        SizedBox(
          width: 35,
          child: Column(
            children: [
              Text(
                month,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                    color: Colors.grey),
              ),
              Text(
                day,
                style: TextStyle(
                  fontSize: 25,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: screenSize.width - 45 - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: screenSize.width - 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          imageappendurl + posterpath,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 6,
                    right: 6,
                    child: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      radius: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.volume_off,
                          color: kwhitecolor,
                          size: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              kheight20,
              Row(
                children: [
                  Flexible(
                    flex: 0,
                    child: Text(
                      movieName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.caveat(
                        textStyle: const TextStyle(
                          fontSize: 40,
                          letterSpacing: -2,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
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
                    ),
                  )
                ],
              ),
              Text(
                "Coming on $day ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 237, 236, 236)),
              ),
              kheight,
              Row(
                children: [
                  Image.network(
                    "data:image/png;base64,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",
                    width: 15,
                    height: 15,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Media",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
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

class mediabuttons extends StatelessWidget {
  final IconData icon1;
  final iconlabel;
  final double iconSize;
  final double heightbetween;

  mediabuttons({
    super.key,
    required this.icon1,
    required this.iconlabel,
    required this.iconSize,
    required this.heightbetween,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: heightbetween * .8,
        ),
        Icon(
          icon1,
          color: const Color.fromARGB(255, 216, 216, 216),
          weight: 1,
          size: iconSize,
        ),
        SizedBox(
          height: heightbetween,
        ),
        Text(
          iconlabel,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w900,
            fontSize: 7,
          ),
        )
      ],
    );
  }
}

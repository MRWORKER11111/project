import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/core/constants.dart';

buildCommingSoon(BuildContext context) {
  return ListView.separated(
    separatorBuilder: (BuildContext context, int index) {
      return SizedBox(
        width: 0,
      );
    },
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      return CommingSoonWidget();
    },
  );
}

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 35,
          child: Column(
            children: [
              Text(
                "FEB ",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                    color: Colors.grey),
              ),
              Text(
                "11",
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
                              "data:image/png;base64,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"),
                          fit: BoxFit.fill),
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
                  Text(
                    'LOREM  IPSUM',
                    style: GoogleFonts.caveat(
                      textStyle: TextStyle(
                        fontSize: 40,
                        letterSpacing: -2,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        mediabuttons(
                          icon1: Icons.notifications_none_outlined,
                          iconlabel: "Remind Me",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        mediabuttons(
                          icon1: Icons.info_outlined,
                          iconlabel: "info",
                        )
                      ],
                    ),
                  )
                ],
              ),
              Text(
                "Coming on Friday",
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
                "LOREM  IPSUM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
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

  mediabuttons({
    super.key,
    required this.icon1,
    required this.iconlabel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon1,
          color: const Color.fromARGB(255, 216, 216, 216),
          weight: 1,
          size: 20,
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

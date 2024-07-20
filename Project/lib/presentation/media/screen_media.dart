import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/widgets/appbar_widget.dart';

class ScreenMedia extends StatelessWidget {
  const ScreenMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            elevation: 0,
            title: Appbarwidget(title: "Media"),
            bottom: TabBar(
                dividerHeight: 0,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: kwhitecolor,
                  borderRadius: BorderRadius.circular(50),
                ),
                tabs: [
                  Tab(
                    text: "🍿 Comming soon",
                  ),
                  Tab(
                    text: "👀 Everyone's & Watching",
                  )
                ]),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: TabBarView(
            children: [
              buildCommingSoon(context),
              buildEveryonesWatching(),
            ],
          ),
        ),
      ),
    );
  }
}

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
      children: [
        SizedBox(
          width: 35,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
          width: screenSize.width - 45,
          height: 500,
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
                              "data:image/jpeg;base64,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"),
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
                    'DARK  NATURE',
                    style: GoogleFonts.caveat(
                      textStyle: TextStyle(
                        fontSize: 30,
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
                "Dark Nature",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(color: Colors.grey),
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

buildEveryonesWatching() {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: ListView(
      children: [
        Container(
          width: 4,
          height: 500,
          color: Colors.cyan,
        )
      ],
    ),
  );
}

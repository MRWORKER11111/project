import 'package:flutter/material.dart';
import 'package:project/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 27,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off,
                      color: kwhitecolor,
                      size: 22,
                    ),
                  ),
                ),
                //right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8txrGEytl7a4iztKJbzeERdUmUcJl61CneQ&s",
                        ),
                      ),
                    ),
                    videoActionsWidget(
                      icon: Icons.emoji_emotions,
                      title: "LOL",
                    ),
                    videoActionsWidget(
                      icon: Icons.add,
                      title: "My List",
                    ),
                    videoActionsWidget(
                      icon: Icons.share,
                      title: "Share",
                    ),
                    videoActionsWidget(
                      icon: Icons.play_arrow,
                      title: "Play",
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class videoActionsWidget extends StatelessWidget {
  final IconData icon;

  final String title;
  const videoActionsWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(
              color: kwhitecolor,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

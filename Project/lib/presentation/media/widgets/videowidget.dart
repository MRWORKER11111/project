
import 'package:flutter/material.dart';
import 'package:project/core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
    required this.screenSize,
    required this.posterpath,
  });

  final Size screenSize;
  final String posterpath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: screenSize.width - 45,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                 posterpath,
              ),   fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          //volume Button
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
    );
  }
}

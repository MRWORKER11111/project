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
        SizedBox(
          height: 230,
          width: screenSize.width - 45,
          child: Image.network(
            posterpath,
            fit: BoxFit.contain,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return const Center(
                  child: Icon(
                    Icons.wifi,
                    color: Color.fromARGB(255, 89, 89, 89),
                    size:80
                  ),
                );
              }
            },
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

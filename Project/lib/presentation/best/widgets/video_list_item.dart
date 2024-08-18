import 'package:flutter/material.dart';


import 'package:project/application/fastlaugh/fast_laugh_bloc.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/core/constants.dart';
import 'package:project/presentation/best/screen_best.dart';
import 'package:video_player/video_player.dart';
import 'package:share_plus/share_plus.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final _posterpath =
        ScreenbestInheritedWidget.of(context)?.movieData.posterpath;
    final videourl = dummyvideourls[index % dummyvideourls.length];

    return Stack(
      children: [
        fastlaughvideoplayer(url: videourl, onstatechanged: (bool) {}),
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
                        backgroundImage: _posterpath == null
                            ? null
                            : NetworkImage(imageappendurl + _posterpath),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: likedvideosidsnotifier,
                      builder: (BuildContext c, Set<int> newlikedlistids,
                          Widget? _) {
                        final _index = index;
                        if (newlikedlistids.contains(_index)) {
                          return GestureDetector(
                            onTap: () {
                              // BlocProvider.of<FastLaughBloc>(context).add(Unlikedvideo(id: _index));
                              likedvideosidsnotifier.value.remove(_index);
                              likedvideosidsnotifier.notifyListeners();
                            },
                            child: videoActionsWidget(
                              icon: Icons.favorite_outline,
                              title: "Liked",
                            ),
                          );
                        } else
                          return GestureDetector(
                            onTap: () {
                              // BlocProvider.of<FastLaughBloc>(context).add(Likedvideo(id: _index));
                              likedvideosidsnotifier.value.add(_index);
                              likedvideosidsnotifier.notifyListeners();
                            },
                            child: videoActionsWidget(
                              icon: Icons.emoji_emotions,
                              title: "LOL",
                            ),
                          );
                      },
                    ),
                    videoActionsWidget(
                      icon: Icons.add,
                      title: "My List",
                    ),
                    GestureDetector(
                      onTap: () {
                        final movieName = ScreenbestInheritedWidget.of(context)
                            ?.movieData
                            .title;
                        if (movieName != null) {
                          Share.share(movieName);
                        }
                      },
                      child: videoActionsWidget(
                        icon: Icons.share,
                        title: "Share",
                      ),
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

class fastlaughvideoplayer extends StatefulWidget {
  final String url;
  final void Function(bool isplaying) onstatechanged;

  const fastlaughvideoplayer(
      {super.key, required this.url, required this.onstatechanged});

  @override
  State<fastlaughvideoplayer> createState() => _fastlaughvideoplayerState();
}

class _fastlaughvideoplayerState extends State<fastlaughvideoplayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.url));
    _videoPlayerController.initialize().then(
      (value) {
        setState(() {
          _videoPlayerController.play();
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: _videoPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              )
            : Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ));
  }

  
}

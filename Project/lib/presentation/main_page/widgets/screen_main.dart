import 'package:flutter/material.dart';
import 'package:project/presentation/best/screen_best.dart';
import 'package:project/presentation/downloads/widget/screen_downloads.dart';
import 'package:project/presentation/home/screen_home.dart';
import 'package:project/presentation/main_page/widgets/bottom_nav.dart';
import 'package:project/presentation/media/screen_media.dart';
import 'package:project/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    const Screenhome(),
    const ScreenMedia(),
    const Screenbest(),
    const Screensearch(),
    ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(5),
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (
            context,
            int index,
            _,
          ) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}

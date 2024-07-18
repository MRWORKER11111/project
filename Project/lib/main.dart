import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/core/colors/colors.dart';
import 'package:project/presentation/main_page/widgets/screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          scaffoldBackgroundColor: backgroundColor,
          textTheme: TextTheme(),
          primaryColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)),
      home: ScreenMainPage(),
    );
  }
}

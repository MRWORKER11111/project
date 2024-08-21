import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project/application/downloads/downloads_bloc.dart';
import 'package:project/application/fastlaugh/fast_laugh_bloc.dart';
import 'package:project/application/home/home_bloc.dart';
import 'package:project/application/hotandnew/hotandnew_bloc.dart';

import 'package:project/application/search/search_bloc.dart';

import 'package:project/core/colors/colors.dart';
import 'package:project/domain/core/di/injectable.dart';
import 'package:project/presentation/main_page/widgets/screen_main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => getIt<FastLaughBloc>()),
        BlocProvider(create: (ctx) => getIt<HotandnewBloc>()),
        BlocProvider(create: (ctx) => getIt<HomeBloc>()),
      ],
      child: MaterialApp(
        title: 'PROJECT',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
            primarySwatch: Colors.blue,
            fontFamily: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Colors.white))
                .fontFamily,
            scaffoldBackgroundColor: backgroundColor,
            primaryColor: Colors.white,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            textTheme: TextTheme(
                displayMedium: TextStyle(color: Colors.white),
                labelMedium: TextStyle(color: Colors.white),
                headlineMedium: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white))),
        home: ScreenMainPage(),
      ),
    );
  }
}

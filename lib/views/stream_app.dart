import 'package:flutter/material.dart';
import 'package:stream_app/screens/home_page.dart';
import 'package:stream_app/theme/cor.dart';

class StreamApp extends StatelessWidget {
  const StreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(backgroundColor: AppColors.black),
        iconButtonTheme: IconButtonThemeData(style: ButtonStyle(iconColor: MaterialStatePropertyAll(AppColors.white))),
        iconTheme: const IconThemeData(color: AppColors.white),
        scaffoldBackgroundColor: AppColors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.black
        ),
      ),
      title: 'Stream app',
      initialRoute: '/home_page',
      routes: {
        '/home_page': (context) => const HomePage(),
      }
    );
  }
}
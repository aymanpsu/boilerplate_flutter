import 'package:flutter/material.dart';
import './values/app_colors.dart';
import './values/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'boilerplate flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // App color Mood
        brightness: Brightness.light,
        // // main color
        // primaryColor: AppColors.PRIMARY_COLOR,
        // // sup color
        // accentColor: AppColors.ACCENT_COLOR,
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColors.PRIMARY_COLOR_TEXT
          ),
          subhead: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w400,
            color: AppColors.ACCENT_COLOR_TEXT
          ),
          title: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      initialRoute: Router.homeRoute,
      onGenerateRoute: Router.generateRoute,
    );
  }
}

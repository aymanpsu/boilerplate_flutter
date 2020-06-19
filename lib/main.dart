import 'package:flutter/material.dart';
import './values/app_routes.dart';
// import './values/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'boilerplate flutter',
      debugShowCheckedModeBanner: false,
      // theme: AppTheme().lightTheme,
      initialRoute: Router.homeRoute,
      onGenerateRoute: Router.generateRoute,
    );
  }
}

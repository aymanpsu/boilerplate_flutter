import 'package:flutter/material.dart';
import './screens/addPost.dart';
import './screens/postsList.dart';
import './screens/homePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (ctx) => HomePage(),
        '/postsList': (ctx) => PostsList(),
        '/addPost': (ctx) => AddPost()
      },
    );
  }
}

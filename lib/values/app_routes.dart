// this code for build sparate routes in flutter
// Use this approach for minmal code
// Inhance use of Navigator
// Handel Andriod/IOS Route way

import 'package:flutter/material.dart';
import '../screens/homeScreen.dart';
import '../screens/addPost.dart';
import '../screens/postsList.dart';

class Router {
  static const String homeRoute = '/';
  static const String postListRoute = '/posts_list';
  static const String addPostRoute = '/add_post';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case postListRoute:
        return MaterialPageRoute(builder: (_) => PostsList());
      case addPostRoute:
        return MaterialPageRoute(builder: (_) => AddPost());
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}

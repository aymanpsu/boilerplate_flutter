import 'package:flutter/material.dart';
import '../screens/addPost.dart';
import '../screens/postsList.dart';
import '../models/request_buttons_modal.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("api intgration"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PostsList()),
                  );
                },
                child: Text("fetch posts"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddPost()),
                  );
                },
                child: Text("add post"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: RaisedButton(
                onPressed: () {},
                child: Text("fetch lastObject"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: RaisedButton(
                onPressed: () {},
                child: Text("fetch image"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: RaisedButton(
                onPressed: () {},
                child: Text("socket io"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

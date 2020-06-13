import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var deviceSize = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    // final curScaleFactor = MediaQuery.of(context).textScaleFactor;
    var appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            child: Image.asset("assets/images/user_image.jpg"),
            borderRadius: BorderRadius.circular(30),
          ),
        )
      ],
    );
    var appBarHeight = appBar.preferredSize.height;
    var statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              // color: Colors.red,
              height: (deviceHeight - appBarHeight - statusBarHeight) * 0.35,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 14.0,
                  right: 14.0,
                  top: 35,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hey Sara,",
                      style: Theme.of(context).textTheme.headline,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18,
                        bottom: 45,
                      ),
                      child: Text(
                        "Find what you want to learn",
                        style: Theme.of(context).textTheme.subhead,
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xFFbdc6cf),
                      ),
                      decoration: const InputDecoration(
                        // contentPadding: EdgeInsets.only(12),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(35),
                          ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(35),
                          ),
                        ),
                        labelText: "Search for anything",
                        prefixIcon: Icon(Icons.search),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Container(
            //   child: GridView.count(
            //     crossAxisCount: 10,
            //     mainAxisSpacing: 10,
            //     crossAxisSpacing: 2,
            //     children: <Widget>[
            //       Container(
            //         color: Colors.amber,
            //         child: Row(
            //           children: <Widget>[Text("data")],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

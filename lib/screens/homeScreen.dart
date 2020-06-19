import 'package:flutter/material.dart';
import 'package:test_http/values/app_colors.dart';

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
      leading: Image.asset(
        "assets/images/menu_icon.png",
        scale: 2,
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
              height: (deviceHeight - appBarHeight - statusBarHeight) * 0.31,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 19.0,
                  right: 19.0,
                  top: 35,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hey Sara,",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18,
                        bottom: 45,
                      ),
                      child: Text(
                        "Find what you want to learn",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: AppColors.accentColorText,
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xFFbdc6cf),
                      ),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 21,
                          bottom: 21,
                        ),
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
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(35),
                          ),
                          borderSide: BorderSide(
                            color: Colors.black26,
                          ),
                        ),
                        labelText: "Search for anything",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 19,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            right: 16,
                          ),
                          child: Image(
                            image: AssetImage("assets/images/search_icon.png"),
                            width: 25,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: (deviceHeight - appBarHeight - statusBarHeight) * 0.13,
              width: double.infinity,
              // color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 19.0,
                  right: 19.0,
                  top: 19,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        color: AppColors.lightBlue,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 19.0,
                  right: 19.0,
                ),
                child: GridView.count(
                  primary: false,
                  crossAxisCount: 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 25,
                  children: <Widget>[
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.lightGreen,
                          ),
                          height: constraints.maxHeight * 0.3,
                          child: Column(
                            children: <Widget>[
                              Text("Marketing"),
                              Text("5 Courses"),
                            ],
                          ),
                        );
                      },
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.lightGreen,
                          ),
                          height: constraints.maxHeight * 0.3,
                          child: Column(
                            children: <Widget>[
                              Text("Marketing"),
                              Text("5 Courses"),
                            ],
                          ),
                        );
                      },
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.lightGreen,
                          ),
                          height: constraints.maxHeight * 0.3,
                          child: Column(
                            children: <Widget>[
                              Text("Marketing"),
                              Text("5 Courses"),
                            ],
                          ),
                        );
                      },
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.lightGreen,
                          ),
                          height: constraints.maxHeight * 0.3,
                          child: Column(
                            children: <Widget>[
                              Text("Marketing"),
                              Text("5 Courses"),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

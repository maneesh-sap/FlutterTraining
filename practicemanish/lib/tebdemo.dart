import 'package:flutter/material.dart';
import 'package:practicemanish/login.dart';
import 'package:practicemanish/screen2.dart';

class Tabdemonavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: [Screen2(), Icon(Icons.ad_units), Text("Default")],
          ),
          appBar: AppBar(
            title: Text("Tab_Man"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.account_box),
                ),
                Tab(
                  icon: Icon(Icons.access_alarms),
                ),
                Tab(
                  icon: Icon(Icons.account_tree),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

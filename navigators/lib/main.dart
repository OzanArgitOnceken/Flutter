// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, unused_import, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigators/green_page.dart';
import 'package:navigators/red_page.dart';
import 'package:navigators/route_generator.dart';
import 'package:navigators/ylw_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(/*

      routes: {
        'redPage': (context) => redPage(),
        'greenPage': (context) => greenPage(),
        'redPage': (context) => yellowPage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text("ERROR"),
          ),
          body: Text("404"),
        ),
      ),
      home: homePage(),
    */
      onGenerateRoute: (settings) => RouteGenerator.routeGenerator(settings),
    );
  }
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material App bar"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  int? sendedNumber = await Navigator.push<int>(
                    //null dönebilir diye ? koydum
                    context,
                    CupertinoPageRoute(
                      builder: (ctx) => redPage(),
                    ),
                  );
                  print(sendedNumber);
                },
                child: Text("Go to red page IOS"),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => redPage()));
                },
                child: Text("Go to red page,Android"),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.maybePop(context);
                },
                child: Text("Maybe pop"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => greenPage()));
                },
                child: Text("Green Page"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  Navigator.pushNamed(context, 'greenPage');
                },
                child: Text("Green Page with named"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.grey),
                onPressed: () {
                  Navigator.pushNamed(context, 'greecccnPag2ease');
                },
                child: Text("Wrong pressed page "),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                onPressed: () {
                  Navigator.pushNamed(context, 'greecccnPag2ease');
                },
                child: Text("Create a list "),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                onPressed: () {
                  Navigator.of(context).pushNamed('/students',arguments: 60);
                },
                child: Text("Student "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: unused_import, curly_braces_in_flow_control_structures, prefer_const_constructors, avoid_web_libraries_in_flutter

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigators/detailedStu.dart';
import 'package:navigators/main.dart';
import 'package:navigators/students.dart';

class RouteGenerator {
  static Route<dynamic>? _goToRoute(Widget wid, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS)
      return CupertinoPageRoute(builder: (context) => wid, settings: settings);
    else if (defaultTargetPlatform == TargetPlatform.android)
      return MaterialPageRoute(builder: (context) => wid, settings: settings);
    else
      return MaterialPageRoute(builder: (context) => wid, settings: settings);
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _goToRoute(homePage(), settings);
      case '/students':
        return _goToRoute(studentList(), settings);
      case '/detailedStudent':
        print("ssdfdsf");
        return _goToRoute(detailedStu(chosenOne: settings.arguments as student), settings);
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text("404"),
            ),
            body: Center(
              child: Text("Page does not exists"),
            ),
          ),
        );
    }
  }
}

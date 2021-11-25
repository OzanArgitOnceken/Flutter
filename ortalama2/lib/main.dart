// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ortalama2/widgets/grade.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appConst;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ortalama',
      theme: ThemeData(
        primarySwatch: appConst.mainColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: gradePage(),
    );
  }
}

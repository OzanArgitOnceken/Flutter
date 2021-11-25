// ignore_for_file: file_names, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myCustomScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("GTU Mobile"),
          backgroundColor: Colors.blue[800],
          expandedHeight: 250,

          //background:Image.asset(assets/images/car)
        ),
        SliverPadding(padding: EdgeInsets.all(3)),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(myDynamic),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(myDynamic, childCount: 100),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            staticContainers(),
          ),
        ),
      ],
    );
  }

  List<Widget> staticContainers() {
    return [
      Container(
        child: Text("Hello"),
        color: Colors.red,
        height: 150,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      ),
      Container(
        child: Text("Hello"),
        color: Colors.red,
        height: 150,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      ),
      Container(
        child: Text("Hello"),
        color: Colors.red,
        height: 150,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      ),
      Container(
        child: Text("Hello"),
        color: Colors.red,
        height: 150,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      ),
      Container(
        child: Text("Hello"),
        color: Colors.red,
        height: 150,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      ),
      Container(
        child: Text("Hello"),
        color: Colors.red,
        height: 150,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      ),
      Container(
        child: Text("Hello"),
        color: Colors.red,
        height: 150,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      ),
      Container(
        child: Text("Hello"),
        color: Colors.red,
        height: 150,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      ),
      Container(
        child: Text("Hello"),
        color: Colors.red,
        height: 150,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      ),
      Container(
        child: Text("Hello"),
        color: Colors.red,
        height: 150,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      ),
      Container(
        child: Text("Hello"),
        color: Colors.red,
        height: 150,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      ),
    ];
  }

  Widget myDynamic(BuildContext ctx, int index) {
    return Container(
      color: randomColor(),
      child: Text("Dynamic:$index"),
      height: 100,
    );
  }

  Color randomColor() {
    return Color.fromARGB(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255));
  }
}

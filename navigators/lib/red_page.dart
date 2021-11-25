// ignore_for_file: camel_case_types, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, avoid_unnecessary_containers

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class redPage extends StatelessWidget {
  int _randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // ignore: avoid_print
        print("You can never go back");
        //çıkmak istediğine emin misin tarzı sorular sorulabilir
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Red Page"),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("This page does not allows illegal exits"),
                ElevatedButton(
                  onPressed: () {
                    _randomNumber = Random().nextInt(100);
                    Navigator.of(context).pop(_randomNumber);
                  },
                  child: Text("Go back"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.maybePop(context);
                  },
                  child: Text("Maybe pop"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

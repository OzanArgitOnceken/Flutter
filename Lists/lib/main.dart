// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lists/CustomScrollView.dart';
import 'package:lists/GridView.dart';
import 'MyListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lists"),
        ),
        body: Center(
            child:myCustomScrollView()
        ),
      ),
    );
  }

  Column buildListElemanColumn() {
    return Column(
      children: [
        Card(
          elevation: 10,
          color: Colors.blue,
          child: ListTile(
            title: Text("Ozan"),
            leading: Icon(Icons.add),
            subtitle: Text("Look your messages"),
            trailing: Icon(Icons.message),
          ),
        ),
        Divider(
          color: Colors.black,
          thickness: 1,
          indent: 30,
          endIndent: 30,
        )
      ],
    );
  }
}

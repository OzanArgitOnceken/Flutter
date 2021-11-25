// ignore_for_file: file_names, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigators/students.dart';

class detailedStu extends StatelessWidget {
  final student chosenOne;

  const detailedStu({required this.chosenOne, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chosen student"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(chosenOne.id.toString()),
            Text(chosenOne.name),
          ],
        ),
      ),
    );
  }
}

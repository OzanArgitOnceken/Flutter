// ignore_for_file: file_names, camel_case_types, unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gradeShow extends StatelessWidget {
  final double grade;
  final int entered;

  const gradeShow({
    required this.grade,
    required this.entered,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(entered > 0 ? "$entered lesson entered" : "No lesson entered",style: TextStyle(color: Colors.blue.shade300),),
        Text("${grade.toStringAsFixed(2)}",style: TextStyle(fontSize: 36,color: Colors.blue),),
        Text("Grade",style: TextStyle(color: Colors.blue.shade300)),
      ],
    );
  }
}

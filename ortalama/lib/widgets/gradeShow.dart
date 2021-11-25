// ignore_for_file: file_names, camel_case_types, unnecessary_string_interpolations, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gradeShow extends StatelessWidget {
  final double ortalama;
  final int dersSayisi;

  const gradeShow({
    required this.ortalama,
    required this.dersSayisi,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(dersSayisi > 0 ? "You entered $dersSayisi lesson" : "No lessons available"),
        Text("${ortalama.toStringAsFixed(2)}",style: TextStyle(color: Colors.blue.shade600,fontSize: 48),),
        Text("Grade")
      ],
    );
  }
}

// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors


import 'package:ortalama2/appConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class gradePage extends StatefulWidget {
  @override
  _gradePageState createState() => _gradePageState();
}

class _gradePageState extends State<gradePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.calculate_outlined),
            SizedBox(
              width: 12,
            ),
            Text("Grade Claculator")
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: _buildForm(),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Text("ortalama"),
                ),
              ),
            ],
          ),
          Text("dersler gelcek")
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(fillColor: appConst.iconColor,filled: true,),),
            Row(
              children: [
                Text("ikonlarrrr"),
              ],
            )
          ],
        ));
  }
}

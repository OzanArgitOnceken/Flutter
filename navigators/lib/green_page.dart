// ignore_for_file: camel_case_types, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class greenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Green Page"),
      ),
      body: Center(
        child: Text("Green page"),
      ),
    );
  }
}

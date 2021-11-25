// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class studentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int howMany = ModalRoute.of(context)!.settings.arguments
        as int; //null olabilir diye ünlem koyduk
    List<student> allStu =
        List.generate(howMany, (index) => student(index + 1, index.toString()));
    print("eleman sayısı $howMany");
    return Scaffold(
      appBar: AppBar(
        title: Text("Students"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          onTap: (){
            Navigator.of(context).pushNamed('/detailedStudent',arguments: allStu[index]);
          },
          leading: CircleAvatar(
            child: Text(allStu[index].id.toString()),
          ),title: Text(allStu[index].name),
        );
      }),
    );
  }
}

class student {
  final int id;
  final String name;

  student(this.id, this.name);
}

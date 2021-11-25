// ignore_for_file: must_be_immutable, prefer_const_constructors, curly_braces_in_flow_control_structures, avoid_print, file_names, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lists/student.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyListView extends StatelessWidget {
  List<student> students = List.generate(
      50, (index) => student(index, "student name:$index", "surname:$index"));

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        //burda builder de yapabilirsin ama divider koymak için seperated yaptım ben
        itemBuilder: (BuildContext context, int index) {
          student e = students[index];
          return Card(
            color: index % 2 == 0 ? Colors.blue : Colors.red,
            child: ListTile(
              onTap: () {
                print("you have click on $index th element");
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              onLongPress: () {
                _alertDialogIslemleri(context);
              },
              focusColor: Colors.blue,
              title: Text(e.name),
              subtitle: Text(e.surname),
              leading: CircleAvatar(
                child: Text(e.id.toString()),
              ),
            ),
          );
        },
        itemCount: students.length,
        separatorBuilder: (context, index) {
          if (index % 5 == 0 && index != 0)
            return Divider(
              thickness: 4,
              color: Colors.black,
            );
          else
            return SizedBox.fromSize();
        });
  }

  ListView classicListView() {
    return ListView(
        children: students
            .map((e) => ListTile(
                  focusColor: Colors.blue,
                  title: Text(e.name),
                  subtitle: Text(e.surname),
                  leading: CircleAvatar(
                    child: Text(e.id.toString()),
                  ),
                ))
            .toList() //!!!!!!!!!!!!!!!!!!!IMPORTANT!!!!!!!!!!!!!!!!!!!
        );
  }

  void _alertDialogIslemleri(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Pressed for a long time"),
            content: Text("You do not love short press"),
            actions: [
              ButtonBar(
                buttonHeight: 12,
                children: [
                  TextButton(
                      onPressed: () => print("pressed OK"), child: Text("OK")),
                  TextButton(
                      onPressed: () =>
                          {print("pressed Close"), Navigator.pop(ctx)},
                      child: Text("Close"))
                ],
              )
            ],
          );
        });
  }
}

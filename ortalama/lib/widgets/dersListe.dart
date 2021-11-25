// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_is_empty, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ortalama/helper/dataHelper.dart';

class DersListesi extends StatelessWidget {
  final Function onElemanSil;
  const DersListesi({required this.onElemanSil, Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: DataHelper.tumEklenenDersler.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.startToEnd,
            onDismissed: (a){
              onElemanSil(index);
            },
            child: Padding(
                padding: const EdgeInsets.all(8),
                child: DataHelper.tumEklenenDersler.length > 0
                    ? Card(
                        child: ListTile(
                          title: Text(DataHelper.tumEklenenDersler[index].ad),
                          leading: CircleAvatar(
                            child: Text(
                                (DataHelper.tumEklenenDersler[index].harf *
                                        DataHelper.tumEklenenDersler[index].kredi)
                                    .toStringAsFixed(1)),
                          ),
                          subtitle: Text("Grade: " +
                              DataHelper.tumEklenenDersler[index].harf
                                  .toStringAsFixed(2) +
                              "  Credit: " +
                              DataHelper.tumEklenenDersler[index].kredi
                                  .toString()+" (slide right for delete)"),
                        ),
                      )
                    : Expanded(
                        child: Container(
                          child: Center(
                            child: Text(
                              "Please add lesson.",
                              style: TextStyle(color: Colors.blue, fontSize: 24),
                            ),
                          ),
                        ),
                      )),
          );
        });
  }
}

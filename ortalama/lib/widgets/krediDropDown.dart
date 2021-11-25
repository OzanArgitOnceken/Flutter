// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ortalama/helper/dataHelper.dart';

class krediDropDown extends StatefulWidget{

final Function onKrediSecildi;

  const krediDropDown({required this.onKrediSecildi,Key? key}) : super(key: key);
  @override
  State<krediDropDown> createState() => _krediDropDownState();
}

class _krediDropDownState extends State<krediDropDown> {int secilenKrediDegeri = 1;
  @override
  Widget build(BuildContext context) {return Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.blue.shade100.withOpacity(0.3),
      borderRadius: BorderRadius.circular(24),
    ),
    child: DropdownButton<int>(
      underline: Container(), //çizgiden kurtlumak için
      value: secilenKrediDegeri,
      onChanged: (deger) {
        setState(() {
          secilenKrediDegeri = deger!;
          widget.onKrediSecildi(secilenKrediDegeri);
        });
      },
      items: DataHelper.tumDerslerinKredilderi(),
    ),
  );
  }
}
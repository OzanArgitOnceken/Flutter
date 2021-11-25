// ignore_for_file: file_names, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ortalama/helper/dataHelper.dart';

class harfDropDown extends StatefulWidget{

  final Function onHarfSecildi;
  const harfDropDown({required this.onHarfSecildi,Key? key}) : super(key: key);
  @override
  State<harfDropDown> createState() => _harfDropDownState();
}

class _harfDropDownState extends State<harfDropDown> {
  double secilenHarfDegeri = 4;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blue.shade100.withOpacity(0.3),
        borderRadius: BorderRadius.circular(24),
      ),
      child: DropdownButton<double>(
        underline: Container(), //çizgiden kurtlumak için
        value: secilenHarfDegeri,
        onChanged: (deger) {
          setState(() {
            secilenHarfDegeri = deger!;
            widget.onHarfSecildi(secilenHarfDegeri);
          });
        },
        items: DataHelper.tumDerslerinHarfleri(),
      ),
    );
  }
}
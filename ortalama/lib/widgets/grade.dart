// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, unused_import, prefer_const_literals_to_create_immutables, prefer_is_empty, curly_braces_in_flow_control_structures, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ortalama/appConstants.dart';
import 'package:ortalama/helper/dataHelper.dart';
import 'package:ortalama/model/ders.dart';
import 'package:ortalama/widgets/HarfDropDown.dart';
import 'package:ortalama/widgets/dersListe.dart';
import 'package:ortalama/widgets/gradeShow.dart';
import 'package:ortalama/widgets/krediDropDown.dart';

class gradePage extends StatefulWidget {
  @override
  _gradePageState createState() => _gradePageState();
}

class _gradePageState extends State<gradePage> {
  double secilenHarfDegeri = 4;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int secilenKrediDegeri = 1;
  String girilenDers = '';

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
            Text("Grade Calculator"),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 8),
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
                  child: gradeShow(
                    dersSayisi: DataHelper.tumEklenenDersler.length,
                    ortalama: DataHelper.ortalamaHesapla(),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: DersListesi(
              onElemanSil: (index) {
                DataHelper.tumEklenenDersler.removeAt(index);
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: _buildTextFormField(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: harfDropDown(
                    onHarfSecildi: (harf) {
                      secilenHarfDegeri = harf;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: krediDropDown(
                    onKrediSecildi: (kredi) {
                      secilenKrediDegeri = kredi;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: IconButton(
                    onPressed: () {
                      _dersEkleOrtalamaHesapla();
                    },
                    icon: Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            )
          ],
        ));
  }

  Widget _buildTextFormField() {
    return TextFormField(
      autofocus: false,
      onSaved: (deger) {
        setState(() {
          girilenDers = deger!;
        });
      },
      validator: (s) {
        if (s!.length == 0)
          return "Enter a lesson name";
        else
          return null;
      },
      decoration: InputDecoration(
        hintText: "Lesson name",
        border: OutlineInputBorder(borderRadius: appConst.myBorderRadius),
        fillColor: appConst.fillColor,
        filled: true,
      ),
    );
  }

  void _dersEkleOrtalamaHesapla() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var eklenecekDers = ders(
          ad: girilenDers, harf: secilenHarfDegeri, kredi: secilenKrediDegeri);
      DataHelper.dersEkle(eklenecekDers);
      setState(() {});
    }
  }
}

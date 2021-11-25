// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ortalama/helper/dataHelper.dart';

import 'package:ortalama/appConstants.dart';
import 'package:ortalama/model/ders.dart';
import 'HarfDropDown.dart';
import 'dersListe.dart';
import 'gradeShow.dart';
import 'krediDropDown.dart';

class myCustomScrollView extends StatefulWidget {
  @override
  State<myCustomScrollView> createState() => _myCustomScrollViewState();
}

class _myCustomScrollViewState extends State<myCustomScrollView> {
  double secilenHarfDegeri = 4;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  int secilenKrediDegeri = 1;

  String girilenDers = '';

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Row(
            children: [
              Icon(Icons.calculate_outlined),
              SizedBox(
                width: 12,
              ),
              Text("Grade Calculator"),
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
            ],
          ),

          backgroundColor: Colors.blue[800],
          expandedHeight: 250,

          //background:Image.asset(assets/images/car)
        ),
        SliverPadding(padding: EdgeInsets.all(3)),

      ],
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
                  child: krediDropDown(onKrediSecildi: (kredi) {
                    secilenKrediDegeri = kredi;
                  },),
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
          return "Enter lesson name";
        else
          return null;
      },
      decoration: InputDecoration(
        hintText: "Ders adı",
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
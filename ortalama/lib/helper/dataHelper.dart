// ignore_for_file: file_names, unused_element, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:ortalama/model/ders.dart';

class DataHelper {
  static List<ders> tumEklenenDersler = [];

  static dersEkle(ders eklenecek) => tumEklenenDersler.add(eklenecek);

  static double ortalamaHesapla() {
    double toplamNot = 0;
    int toplamKredi = 0;
    tumEklenenDersler.forEach((element) {
      toplamNot += element.harf * element.kredi;
      toplamKredi += element.kredi;
    });
    return (toplamNot) / toplamKredi;
  }

  static List<String> _createDersHarfNotlari() {
    return ['AA', 'BA', 'BB', 'CB', 'CC', 'DC', 'DD', 'FF'];
  }

  static List<int> _tumKrediler() {
    return List.generate(10, (index) => index + 1).toList();
  }

  static double _harfiNotaCevir(String harf) {
    switch (harf) {
      case 'AA':
        return 4;
      case 'BA':
        return 3.5;
      case 'BB':
        return 3;
      case 'CB':
        return 2.5;
      case 'CC':
        return 2;
      case 'DC':
        return 1.5;
      case 'DD':
        return 1;
      case 'NA':
        return 0.0;
      case 'FF':
        return 0.0;
      default:
        return 1;
    }
  }

  static List<DropdownMenuItem<double>> tumDerslerinHarfleri() {
    return _createDersHarfNotlari()
        .map(
          (e) => DropdownMenuItem<double>(
            child: Text(e),
            value: _harfiNotaCevir(e),
          ),
        )
        .toList();
  }

  static List<DropdownMenuItem<int>> tumDerslerinKredilderi() {
    return _tumKrediler()
        .map((e) => DropdownMenuItem(
              child: Text(e.toString()),
              value: e,
            ))
        .toList();
  }
}

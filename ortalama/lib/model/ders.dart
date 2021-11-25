// ignore_for_file: camel_case_types

class ders {
  String ad;
  double harf;
  int kredi;

  ders({required this.ad, required this.harf, required this.kredi});

  @override
  String toString() {
    return '$ad $harf $kredi';
  }
}

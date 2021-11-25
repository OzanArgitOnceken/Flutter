// ignore_for_file: camel_case_types, file_names

import 'dart:html';

import 'package:flutter/cupertino.dart';

class userData {
  String _name;

  String _surname;
  String _studentNumber;
  String _tcNumber;
  String _password;
  bool haveBike;
  bool lateSubmit;
  int bikeNumber;
  int _remainedDays = 5;


  userData(this._name, this._surname, this._studentNumber, this._tcNumber,
      this._password,
      {this.haveBike = false, this.lateSubmit = false, this.bikeNumber = -1});

  void changePassword(String newPassword) => _password = newPassword;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get surname => _surname;

  set surname(String value) {
    _surname = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get studentNumber => _studentNumber;

  set studentNumber(String value) {
    _studentNumber = value;
  }

  String get tcNumber => _tcNumber;

  set tcNumber(String value) {
    _tcNumber = value;
  }

  int get remainedDays => _remainedDays;

  set remainedDays(int value) {
    _remainedDays = value;
  }

  @override
  String toString() {
    return "Name:" +
        _name +
        "\n Surname:" +
        _surname +
        "\n Student number:" +
        _studentNumber +
        "\nTc number" +
        _tcNumber +
        "\nPassword" +
        _password +
        "\nHave bike?" +
        haveBike.toString() +
        "\nLate delivered?" +
        lateSubmit.toString() +
        "\nBike number: " +
        bikeNumber.toString();
  }

  /*
  * app içinde userın detaylarını görmek istendiği zaman için text dönüyo
  * ihtiyaca göre ekleme yapıcam
  * */
  Widget details() {
    return Text("Name:" +
        _name +
        "\n Surname:" +
        _surname +
        "\n Student number:" +
        _studentNumber +
        "\nTc number" +
        _tcNumber +
        "Password" +
        _password);
  }
  /*
  * bisiklet varsa false dönüyo yoksa bisiklet verip true dönüyo
  * */

  bool giveBike(int givenBikeNumber) {
    if (this.bikeNumber == -1) {
      this.haveBike = true;
      this.bikeNumber = givenBikeNumber;
      return true;
    }
    return false;
  }
  /*
  * bi gün geçiriyo geç teslim zamanı gelmişse late i true yapıyo
  *
  * */
  void oneDayAfter() {
    this.remainedDays--;
    if (this.remainedDays < 0) lateSubmit = true;
  }
  /*
  *farklı bisiklet getirmişse kabul etmiyo öteki türlü bisikleti metin abiye veriyo bi de geç vermişse siciline işliyo
  * */
  bool deliverBike(int takenBikeFromUser) {
    if (takenBikeFromUser != this.bikeNumber) //bike numbers should match
      return false;
    this.bikeNumber = -1;
    haveBike = false;
    return true;
  }
  /*
  * login için
  * */
  bool compareNumber(String enteredNumber){
    if(enteredNumber.compareTo(this._studentNumber)==0)
      return true;
    return false;
  }
  bool comparePassword(String enteredPassword){
    if(enteredPassword.compareTo(this._password)==0)
      return true;
    return false;
  }
}

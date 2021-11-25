import 'package:flutter/material.dart';
import 'package:user/userData.dart';

void main() {

  userData a=userData("ozan", "onceken", "190104545", "2015555", "123");
  print(a);
  a.giveBike(42);
  print(a);
  if(a.compareNumber("enteredMail"))
    print("mail is true");
  else
    print("Mail is wrong");
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  print("-------------------------");
  print(a);
  a.deliverBike(12);
}
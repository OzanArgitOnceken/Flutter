// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GTU Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'GTU Mobile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _number;

  @override
  void initState() {
    super.initState();
    _number = TextEditingController(text: "190104...");
  }

  @override
  void dispose() {
    super.dispose();
    _number.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: [
              Icon(
                Icons.account_balance_outlined,
                size: 30,
              ),
              Container(
                width: 10,
              ),
              Text(
                "GTU Mobil",
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.person,size: 100,),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                keyboardType: TextInputType.number,
                autofocus: true,
                cursorColor: Colors.red,
                maxLength: 10,
                decoration: InputDecoration(
                  labelText: "Numara:",
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  suffixIcon: Icon(Icons.person),
                  hintText: 'Numaranızı giriniz',
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.all(16),
              child: TextFormField(
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  labelText: "Şifre:",
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  suffixIcon: Icon(Icons.lock),
                  hintText: 'Şifrenizi giriniz',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

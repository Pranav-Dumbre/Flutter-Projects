//import 'package:column/columndemo.dart';
//import 'package:column/flag.dart';
//import 'package:column/rowdemo.dart';
import 'package:flutter/material.dart';
import 'P1Tesla.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThomePage(),
    );
  }
}

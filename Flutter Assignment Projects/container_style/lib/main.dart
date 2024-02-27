import 'package:flutter/material.dart';
import 'module9.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Mod9(),
      debugShowCheckedModeBanner: false,
    );
  }
}

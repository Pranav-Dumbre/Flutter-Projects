import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:developer';
import 'company.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN MAINAPP BUILD");
    return Provider<Company>(
      create: (context) {
        log("IN CREATE");
        return Company(
          compName: "Google",
          empCount: 250,
        );
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Body(),
      ),
    );
  }
}

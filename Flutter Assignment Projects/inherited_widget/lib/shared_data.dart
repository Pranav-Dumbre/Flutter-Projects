import 'package:flutter/material.dart';

class SharedData extends InheritedWidget {
  int loginId;
  String username;
  String email;
  
  SharedData(
      {super.key,
      required this.loginId,
      required this.email,
      required this.username,
      
      required super.child});

  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return loginId != oldWidget.loginId;
  }
}

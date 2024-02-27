import 'package:flutter/material.dart';

class Mod3 extends StatelessWidget {
  const Mod3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Styles"),
      ),
      body: Center(
        child: Container(
          //to add padding to all directions use EdgeInsets.all()
          //to addd padding to specific direction use EdgeInsets.only()
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
            bottom: 10,
          ),
          height: 100,
          width: 100,
          color: Colors.blue,
          child: Container(
            color: Colors.pinkAccent,
          ),
        ),
      ),
    );
  }
}

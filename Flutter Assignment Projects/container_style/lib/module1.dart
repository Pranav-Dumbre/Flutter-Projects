import 'package:flutter/material.dart';

class Mod1 extends StatelessWidget {
  const Mod1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Styles"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
        ),
      ),
    );
  }
}

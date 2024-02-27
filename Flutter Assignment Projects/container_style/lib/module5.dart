import 'package:flutter/material.dart';

class Mod5 extends StatelessWidget {
  const Mod5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Styles"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            //color: Colors.blue,
            border: Border.all(
              color: Colors.yellow,
              width: 5,
            ),
          ),
        ),
      ),
    );
  }
}

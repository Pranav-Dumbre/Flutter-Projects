import 'package:flutter/material.dart';

class Mod7 extends StatelessWidget {
  const Mod7({super.key});
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
            //color of the box using BoxDecoration
            color: Colors.amber,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: Colors.blue,
              width: 10,
            ),
          ),
        ),
      ),
    );
  }
}

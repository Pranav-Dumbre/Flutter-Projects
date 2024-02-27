import 'package:flutter/material.dart';

class Mod8 extends StatelessWidget {
  const Mod8({super.key});
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
                color: Colors.black,
                width: 10,
              ),
              boxShadow: const [
                BoxShadow(
                    color: Colors.purple,
                    offset: Offset(30, 30),
                    blurRadius: 8),
                BoxShadow(
                    color: Colors.red, offset: Offset(20, 20), blurRadius: 8),
                BoxShadow(
                    color: Colors.green, offset: Offset(10, 10), blurRadius: 8),
              ]),
        ),
      ),
    );
  }
}

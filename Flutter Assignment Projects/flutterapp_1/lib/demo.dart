import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Center"),
      ),
      body: Container(
        width: 300,
        height: 150,
        color: Colors.lime,
        child: Center(
          heightFactor: 10.0,
          widthFactor: 0.4,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

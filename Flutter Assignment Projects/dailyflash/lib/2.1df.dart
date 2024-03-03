// Create a screen that displays the container in the center having
// size (height: 200, width: 200). The Container must have border with
// rounded edges. The border must be of the color red. Display a Text
// in the center of the container.
import 'package:flutter/material.dart';

class DailyFlash extends StatelessWidget {
  const DailyFlash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Flash",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green[900],
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
              width: 10,
              color: Colors.red,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: const Center(
            child: Text(
              "Hello !",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}

///crete a screen , in the center of screen display
///container with rounded corners , give acolor to container
///Container must have shadow of color red


import 'package:flutter/material.dart';

class DailyFlash extends StatelessWidget {
  const DailyFlash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Daliy Flash",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(color: Colors.blue, boxShadow: [
            BoxShadow(
                offset: Offset(20, 20), blurRadius: 12, color: Colors.red),
          ]),
        ),
      ),
    );
  }
}

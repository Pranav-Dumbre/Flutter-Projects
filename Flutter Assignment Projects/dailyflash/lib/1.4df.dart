///create a screen that will display a container
///in center of screen, size(width:300,height:300),
///container must have blue color & border of red color

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
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                width: 20,
                color: Colors.red,
              )),
        ),
      ),
    );
  }
}

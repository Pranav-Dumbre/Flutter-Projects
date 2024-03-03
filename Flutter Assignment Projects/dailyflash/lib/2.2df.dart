// In the screen add a container of
//size(width 100, height: 100)
// that must only have a left border of width 5 and color as
// per your choice. Give padding to the container and display
// a text in the Container.
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
        backgroundColor: const Color.fromRGBO(165, 0, 8, 1),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 0, 98, 137),
            border: Border(
              left: BorderSide(
                color: Colors.black,
                width: 5,
              ),
            ),
          ),
          padding: const EdgeInsets.all(10),
          child: const Text(
            "Hello !",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

// In the screen add a container of size(width 100, height: 100).
//  The container must have a border as displayed in the below
//  image. Give color to the container and border as per your
//  choice.
import 'package:flutter/material.dart';

class DailyFlash extends StatelessWidget {
  const DailyFlash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daliy Flash",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromRGBO(91, 0, 100, 1),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
              ),
              border: Border.all(width: 5, color: Colors.purple)),
        ),
      ),
    );
  }
}

// 2. Create an Elevated button in the Center of the Screen.
// Decorate the button as follows.
// a. The button must be of Circular Shape.
// b. The Size of the button must be (width:200, height: 200).
// c. The button must have a border of color red.

import "package:flutter/material.dart";

class DailyFlash extends StatefulWidget {
  const DailyFlash({super.key});
  @override
  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State {
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
        backgroundColor: Colors.purple[200],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            //To Change button shape to circle
            shape: const CircleBorder(),
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            //change Dimensions to 200 x 200
            fixedSize: const Size.square(200),
            //for Broder of Button
            side: const BorderSide(color: Colors.red, width: 10),
          ),
          child: const Icon(Icons.favorite_outline_rounded),
        ),
      ),
    );
  }
}

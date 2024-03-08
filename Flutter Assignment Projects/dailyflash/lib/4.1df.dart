// 1. Create an ElevatedButton, in the centre of the screen.
//The button must have rounded edges. Give a shadow of color red to the button.

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
          "Daliy Flash",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
            //to adjust elevation of button
            elevation: MaterialStatePropertyAll(20),
            shadowColor: MaterialStatePropertyAll(Colors.red), //shadow color
          ),
          child: const Text("Daily Flash"),
        ),
      ),
    );
  }
}

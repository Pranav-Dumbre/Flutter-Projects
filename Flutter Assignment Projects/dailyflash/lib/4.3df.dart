// 3. Create a Screen and then add a floating action button.
//In this button, you will have to display your name and an
//Icon which must be placed in a row.

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
      //changes location of floating action button
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        child: const Row(
          children: [
            Text("Pranav"),
            Icon(Icons.telegram),
          ],
        ),
      ),
    );
  }
}

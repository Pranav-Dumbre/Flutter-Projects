// 4. Add a floating action button on the screen and when we
// hover over the button the color of the button must become orange.

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
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        hoverElevation: 20,
        hoverColor: Colors.orange,
        backgroundColor: Colors.blue,
        child: const Icon(Icons.message_rounded),
      ),
    );
  }
}

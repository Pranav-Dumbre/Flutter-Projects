// Add a container with the color red and display the
// text "Click me!" in the center of the container.
// On tapping the container, the text must change to
// "Container Tapped" and the color of the container
// must change to blue.
import 'package:flutter/material.dart';

class DailyFlash extends StatefulWidget {
  const DailyFlash({super.key});
  @override
  State createState() => _DailyFlashState();
}


class _DailyFlashState extends State {
  bool _isTapped = false;

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
        backgroundColor: Colors.blue[600],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isTapped = !_isTapped;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            color: _isTapped ? Colors.red : Colors.blue,
            child: Center(
              child: _isTapped
                  ? const Text(
                      "Click me !",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    )
                  : const Text(
                      "Container Tapped",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

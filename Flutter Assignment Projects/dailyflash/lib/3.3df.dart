//Add a container in the center of the screen with a
//size(width: 200, height: 200). Give a red border to the container.
//Now when the user taps the container change the color of the border to green.

import 'package:flutter/material.dart';

class DailyFlash extends StatefulWidget {
  const DailyFlash({super.key});
  @override
  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State<DailyFlash> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromRGBO(255, 157, 20, 1),
            title: const Text(
              "Daily Flash",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )),
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
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(
                  width: 20,
                  color: _isTapped ? Colors.green : Colors.red,
                ),
              ),
            ),
          ),
        ));
  }
}

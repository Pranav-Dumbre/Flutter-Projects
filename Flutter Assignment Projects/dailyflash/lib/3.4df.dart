//Create a Container with size(height:200, width:300)
//now give a shadow to the container but the shadow must only be
//at the top side of the container.

import 'package:flutter/material.dart';

class DailyFlash extends StatefulWidget {
  const DailyFlash({super.key});
  @override
  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State<DailyFlash> {
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
          child: Container(
            height: 200,
            width: 300,
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -10), //shadow at top side only
                  color: Colors.black,
                  blurRadius: 10,
                ),
              ],
            ),
          ),
        ));
  }
}

//Create a Circular Container and give the Container 2 colors le red and blue.
// 50 % of the container must contain red and the other 50% must contain blue color

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              shape: BoxShape.circle,//changes square to circle
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.blue,
                ],
                stops: [0.5, 0.5],//gives 50% red  and 50
              ),
            ),
          ),
        ));
  }
}

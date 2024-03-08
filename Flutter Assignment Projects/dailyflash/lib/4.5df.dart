// 5. Create a screen and add a floating Action button.
//Place the floating action button in the bottom center of the screen.
// When the button is long pressed the color of the button must change to purple.
import 'package:flutter/material.dart';

class DailyFlash extends StatefulWidget {
  const DailyFlash({super.key});
  @override
  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State {
  bool changeColor = false;
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
        backgroundColor: Colors.yellow,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onLongPress: () {
          setState(() {//on long pressed we change bool vaue of changeColor
            changeColor = !changeColor;
          });
        },
        child: FloatingActionButton(
          onPressed: () {},
          //bool value of changecolor determines color of floatingActionButton
          backgroundColor: changeColor ? Colors.purple : Colors.yellow,
          child: const Icon(Icons.color_lens_rounded),
        ),
      ),
    );
  }
}

//Create a Container in the Center of the screen,
//now In the background of the Container display an Image
//(the image can be an asset or network image).
//Also, display text in the center of the Container.
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
            height: 300,
            width: 300,
            color: Colors.black,
            child: Stack(//TO Overlap widgets
              children: [
                Center(
                  child: Image.network(
                    "https://i.stack.imgur.com/aGiVE.png",
                  ),
                ),
                const Center(//To bring text in center 
                  child: Text(
                    "Pranav",
                    // textAlign: TextAlign.center, // DOESNT WORK HERE
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

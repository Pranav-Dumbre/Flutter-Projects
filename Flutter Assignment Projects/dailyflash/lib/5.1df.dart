// 1. Create a Screen, in the appBar display "Profile Information". In the body,
// display an image of size (height: 250 width:250). Below the image add
// appropriate spacing and then display the user Name and Phone Number
// vertically. The name and phone number must have a font size of 16 and a font
// weight of 500.

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
          "Profile Information",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(0, 55, 92, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTszwIQ4alglOCYtcAfrVPezwJTVkIUxO3tgQ&usqp=CAU",
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "@thedumbrepranav",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "9307751010",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

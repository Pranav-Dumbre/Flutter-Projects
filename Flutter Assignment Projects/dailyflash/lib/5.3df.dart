// 3. Create a Screen and add your image in the center of the screen below your
// image display your name in a container, give a shadow to the Container
// and give a border to the container the top left and top right corners must
// be circular, with a radius of 20. Add appropriate padding to the container.

import "package:flutter/material.dart";

class DailyFlash extends StatelessWidget {
  const DailyFlash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 1, 147, 173),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              "https://pbs.twimg.com/profile_images/1504876739293429761/2QwhVdGn_400x400.jpg",
              height: 350,
              width: 350,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 195, 209),
                border: Border.all(
                    color: const Color.fromARGB(255, 0, 107, 115), width: 5),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(10, 10),
                      color: Color.fromARGB(255, 63, 63, 63),
                      blurRadius: 5)
                ],
              ),
              child: const Text(
                "Pranav",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

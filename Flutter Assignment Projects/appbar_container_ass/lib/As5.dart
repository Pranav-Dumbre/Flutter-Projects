import "package:flutter/material.dart";

class As5 extends StatelessWidget {
  const As5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "3 Images",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 8, 25, 55),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "image1.jpg",
              height: 150,
              width: 150,
            ),
            Image.asset(
              "image2.jpg",
              height: 150,
              width: 150,
            ),
            Image.asset(
              "image3.jpg",
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}

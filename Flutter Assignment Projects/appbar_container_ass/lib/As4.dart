import "package:flutter/material.dart";

class As4 extends StatelessWidget {
  const As4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.blueAccent,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.pinkAccent,
          )
        ],
      )),
    );
  }
}

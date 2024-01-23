import "package:flutter/material.dart";

class As1 extends StatelessWidget {
  const As1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AppBar",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
        actions: const [
          Icon(Icons.send_rounded),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.message_rounded),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

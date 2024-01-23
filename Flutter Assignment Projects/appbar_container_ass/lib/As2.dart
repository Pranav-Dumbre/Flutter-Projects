import "package:flutter/material.dart";

class As2 extends StatelessWidget {
  const As2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "AppBar",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        actions: const [
          Icon(Icons.send_rounded),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

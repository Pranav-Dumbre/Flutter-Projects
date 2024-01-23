import "package:flutter/material.dart";

class As3 extends StatelessWidget {
  const As3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello Core2web",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
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
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 360,
                color: Colors.blue,
              )
            ]),
      ),
    );
  }
}

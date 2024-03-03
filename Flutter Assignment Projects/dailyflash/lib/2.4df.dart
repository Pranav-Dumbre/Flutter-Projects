// Create a container that will have a border.
// The top right and bottom left corners of the border must be
// rounded. Now display the Text in the Container and give
// appropriate padding to the container.
import 'package:flutter/material.dart';

class DailyFlash extends StatelessWidget {
  const DailyFlash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daliy Flash",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[600],
      ),
      body: Center(
        child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
            ),
            padding: const EdgeInsets.all(20),
            child: const Text(
              "Pranav",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )),
      ),
    );
  }
}

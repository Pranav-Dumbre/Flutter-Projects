//Create a Container in the Center of the Screen with
//size(width: 300, height: 300) and display an image in
//the center of the Container. Apply appropriate padding to the container.

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
            padding: const EdgeInsets.all(10),
            height: 300,
            width: 300,
            color: Colors.black,
            child: Image.network(
                "https://media.istockphoto.com/id/1145393791/vector/farm-animals-sign.jpg?s=612x612&w=0&k=20&c=TkDlbOcvUb6d7jGpZtmzlFNqYhPNGiakfPVnJCL9H6c="),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});
  @override
  State<StatefulWidget> createState() {
    return _Assignment2State();
  }
}

class _Assignment2State extends State<Assignment2> {
  bool box1Color = false;
  bool box2Color = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Color Box"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                  Container(
                    height: 300,
                    width: 300,
                    color: box1Color ? Colors.red : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () => {
                            setState(() {
                              box1Color = !box1Color;
                            }),
                          },
                      child: Text("Box1"))
                ]),
                const SizedBox(
                  width: 20,
                ),
                Column(children: [
                  Container(
                    height: 300,
                    width: 300,
                    color: box2Color ? Colors.yellow : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () => {
                            setState(() {
                              box2Color = !box2Color;
                            }),
                          },
                      child: const Text("Box2"))
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Ass1 extends StatelessWidget {
  const Ass1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("2 ROW CONTAINERS")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.limeAccent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.limeAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}





/*
Scaffold(
          appBar: AppBar(
            title: const Text("Assignment 1"),
            centerTitle: true,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.pink,
          ),
          body: const SizedBox(
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Flutter_demo",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        )
*/
/*
Scaffold(
        appBar: AppBar(title: const Text("Assignment 2")),
        body: SizedBox(
          height: double.infinity,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
      ),
*/
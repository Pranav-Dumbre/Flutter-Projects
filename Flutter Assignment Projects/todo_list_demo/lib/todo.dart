import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoListDemo extends StatefulWidget {
  const TodoListDemo({super.key});
  @override
  State createState() => _TodoListDemoState();
}

class _TodoListDemoState extends State {
  List<Color?> colorList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];
  int colorindex = -1;
  int count = 1;

  Color? boxColor() {
    if (colorindex == colorList.length - 1) {
      colorindex = 0;
    } else {
      colorindex++;
    }

    return colorList[colorindex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do List",
          style: GoogleFonts.quicksand(
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        onPressed: () {
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int count) {
        return Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                color: boxColor(), //colorList[colorindex],
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                      color: Colors.grey, offset: Offset(0, 8), blurRadius: 20),
                ],
              ),
              width: 380,
              //color: colorList[index],
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,

                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    // padding: const EdgeInsets.all(6.0),

                    child: Image.asset(
                      "Vector.png",
                    ),
                  )
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';

class Mod4 extends StatelessWidget {
  const Mod4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Styles"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
//margin of inner container is adding space arround it

          child: Container(
            //margin  is used to add space outside a widget border
            //adds space between the widget border and surrounding widgets
            //EdgeInsets.only(),EdgeInsets.all(),EdgeInsets.symmetric()
            margin: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 10,
              right: 10,
            ),
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

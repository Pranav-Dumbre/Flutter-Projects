import 'package:flutter/material.dart';

class Mod2 extends StatelessWidget {
  const Mod2({super.key});
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
          //adds space arround the child , used to create space or margins
          //arround other widgets
          //we can add pading to horzontal and vertical directions using
          //EdgeInsets.symmetric
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            color: Colors.yellow,//height width adjusted by padding itself
          ),
        ),
      ),
    );
  }
}

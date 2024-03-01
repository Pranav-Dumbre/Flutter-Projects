///crete an AppBar ,give an Icon at start of the appBar ,
///give a title in the middle , & at the end add an Icon.

import 'package:flutter/material.dart';

class DailyFlash extends StatelessWidget {
  const DailyFlash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_circle_rounded),
        actions: const [
          Icon(Icons.settings),
        ],
        centerTitle: true,
        title: const Text(
          "Daily Flash",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}

///crete an AppBar ,give color of pyur choice to appBar & then
///add an icon at the start of appBar & 3 icons at the end of Appbar.

import 'package:flutter/material.dart';

class DailyFlash extends StatelessWidget {
  const DailyFlash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.computer),
        actions: const [
          Icon(Icons.message_outlined),
          SizedBox(
            width: 4,
          ),
          Icon(Icons.search_outlined),
          Icon(Icons.more_vert_outlined),
        ],
        title: const Text(
          "Daily Flash",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: Colors.orange[900],
      ),
    );
  }
}

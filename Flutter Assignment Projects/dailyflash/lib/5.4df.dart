// 4. Create a Screen in which we will display 3 Containers of Size 100,100 in a
// Row. Give color to the containers. The containers must divide the free
// space in the main axis evenly among each other.
import "package:flutter/material.dart";

class DailyFlash extends StatelessWidget {
  const DailyFlash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Row Containers",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 109, 0, 121),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: const Color.fromARGB(255, 109, 0, 121),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: const Color.fromARGB(255, 109, 0, 121),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: const Color.fromARGB(255, 109, 0, 121),
            ),
          ],
        ),
      ),
    );
  }
}

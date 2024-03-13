// // Create a Screen that displays 3 widgets in a Column. The image must be the
// first widget, the next widget must be a Container of color red and the 3rd
// widget must be a Container of color blue. Place all the 3 widgets in a
// Column.
// The Image must be placed at the top center and the other 2 widgets must
// be placed at the bottom center of the screen.
import "package:flutter/material.dart";

class DailyFlash extends StatelessWidget {
  const DailyFlash({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "3 Widget",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 109, 0, 121),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
                "https://www.wroffy.com/wp-content/plugins/phastpress/phast.php/c2VydmljZT1pbWFnZXMmc3JjPWh0dHBzJTNBJTJGJTJGd3d3Lndyb2ZmeS5jb20lMkZ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMjAlMkYwNCUyRmJ1eS1hZG9iZS1pbGx1c3RyYWl0b3ItNjAweDYwMC5qcGcmY2FjaGVNYXJrZXI9MTY2OTYyMjg1MC0xODE5MSZ0b2tlbj0yZDIxNmQ3NDAwNDA2NjEw.q.jpg"),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

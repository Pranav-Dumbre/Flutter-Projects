// 2. Create a Screen in which we have 3 Containers in a Column each container
// must be of height 100 and width 100. Each container must have an image
// as a child.

import "package:flutter/material.dart";

class DailyFlash extends StatelessWidget {
  const DailyFlash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Image Containers",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(139, 0, 33, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: const Color.fromRGBO(139, 0, 33, 1),
              child: Image.network(
                  "https://www.wroffy.com/wp-content/plugins/phastpress/phast.php/c2VydmljZT1pbWFnZXMmc3JjPWh0dHBzJTNBJTJGJTJGd3d3Lndyb2ZmeS5jb20lMkZ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMjAlMkYwNCUyRmJ1eS1hZG9iZS1pbGx1c3RyYWl0b3ItNjAweDYwMC5qcGcmY2FjaGVNYXJrZXI9MTY2OTYyMjg1MC0xODE5MSZ0b2tlbj0yZDIxNmQ3NDAwNDA2NjEw.q.jpg"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: const Color.fromRGBO(139, 0, 33, 1),
              child: Image.network(
                  "https://www.wroffy.com/wp-content/plugins/phastpress/phast.php/c2VydmljZT1pbWFnZXMmc3JjPWh0dHBzJTNBJTJGJTJGd3d3Lndyb2ZmeS5jb20lMkZ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMjAlMkYwNCUyRmJ1eS1hZG9iZS1pbGx1c3RyYWl0b3ItNjAweDYwMC5qcGcmY2FjaGVNYXJrZXI9MTY2OTYyMjg1MC0xODE5MSZ0b2tlbj0yZDIxNmQ3NDAwNDA2NjEw.q.jpg"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: const Color.fromRGBO(139, 0, 33, 1),
              child: Image.network(
                  "https://www.wroffy.com/wp-content/plugins/phastpress/phast.php/c2VydmljZT1pbWFnZXMmc3JjPWh0dHBzJTNBJTJGJTJGd3d3Lndyb2ZmeS5jb20lMkZ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMjAlMkYwNCUyRmJ1eS1hZG9iZS1pbGx1c3RyYWl0b3ItNjAweDYwMC5qcGcmY2FjaGVNYXJrZXI9MTY2OTYyMjg1MC0xODE5MSZ0b2tlbj0yZDIxNmQ3NDAwNDA2NjEw.q.jpg"),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";

class As7 extends StatelessWidget {
  const As7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AppBar",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
              child: Row(
            children: [
              const SizedBox(width: 10),
              Image.network(
                "https://images.pexels.com/photos/459449/pexels-photo-459449.jpeg?cs=srgb&dl=pexels-pixabay-459449.jpg&fm=jpg",
                width: 150,
                height: 300,
              ),
              const SizedBox(width: 10),
              Image.network(
                "https://i0.wp.com/www.pugdundeesafaris.com/blog/wp-content/uploads/2023/06/0-1-scaled.jpg?ssl=1",
                width: 150,
                height: 300,
              ),
              const SizedBox(width: 10),
              Image.network(
                "https://d150u0abw3r906.cloudfront.net/wp-content/uploads/2022/07/MicrosoftTeams-image-4-5.png",
                width: 150,
                height: 300,
              ),
              const SizedBox(width: 10),
              Image.network(
                "https://cdn-eaekd.nitrocdn.com/CxTeoSPKdjdqTSxLEEGaKiGroHlKASqH/assets/images/optimized/rev-d765668/photo/2016/11/14/04/45/elephant-1822636_960_720.jpg",
                width: 150,
                height: 300,
              ),
              const SizedBox(width: 10),
              Image.network(
                "https://assets-global.website-files.com/60e4d0d0155e62117f4faef3/621fee991c8559c5d9f3679f_image1-p-1600.jpeg",
                width: 150,
                height: 300,
              ),
              const SizedBox(width: 10),
            ],
          ))),
    );
  }
}

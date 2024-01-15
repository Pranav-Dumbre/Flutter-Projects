

import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});
  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int? selectIndex = 0;
  final List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s",
    "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=",
    "https://media.architecturaldigest.com/photos/63079fc7b4858efb76814bd2/16:9/w_4000,h_2250,c_limit/9.%20DeLorean-Alpha-5%20%5BDeLorean%5D.jpg",
    "https://img.etimg.com/thumb/width-1200,height-1200,imgsize-61898,resizemode-75,msid-88748949/magazines/panache/behold-the-worlds-first-car-that-changes-colour-bmw-unveils-new-tech-for-future-cars-at-ces-2022.jpg"
  ];
  void showNextImage() {
    setState(() {
      selectIndex = selectIndex! + 1;
      print(selectIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Images"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectIndex!],
              height: 300,
              width: 300,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showNextImage();
              },
              child: const Text("Next"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectIndex = 0;
                });
              },
              child: const Text("RESET"),
            ),
          ],
        ),
      ),
    );
  }
}

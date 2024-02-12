import 'package:flutter/material.dart';

class DisplayImages extends StatefulWidget {
  const DisplayImages({super.key});
  @override
  State createState() => _DisplayImagesState();
}

class _DisplayImagesState extends State<DisplayImages> {
  //int index = 0;
  List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s"
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s"
  ];
  
  void _showNext() {
    // index++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Images"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showNext();
          });
        },
      ),
      body: ListView.builder(
        itemCount: imageList.length,
        itemBuilder: ((context, index) {
          return Container(
              margin: const EdgeInsets.all(10),
              color: Colors.red,
              child: Row(
                children: [
                  Text(
                    "$index",
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Image.network(imageList[index]),
                ],
              ));
        }),
      ),
    );
  }
}

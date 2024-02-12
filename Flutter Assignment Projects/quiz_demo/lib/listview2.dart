import 'package:flutter/material.dart';

class DisplayImages1 extends StatefulWidget {
  const DisplayImages1({super.key});
  @override
  State createState() => _DisplayImages1State();
}

class _DisplayImages1State extends State<DisplayImages1> {
  int num = 1;
  List<int> intList = [];
  void _showNext() {
    intList.add(num);
    num++;
    print(intList);
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
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: intList.length,
        itemBuilder: ((context, index) {
          return Container(
              margin: const EdgeInsets.all(10),
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${intList[index]}",
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  //Image.network(imageList[index]),
                ],
              ));
        }),
      ),
    );
  }
}

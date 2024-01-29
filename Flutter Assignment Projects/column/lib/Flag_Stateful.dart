import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StatefulFlag',
      home: FlagApp(),
    );
  }
}

class FlagApp extends StatefulWidget {
  const FlagApp({super.key});

  @override
  State<FlagApp> createState() => _FlagApp();
}

class _FlagApp extends State<FlagApp> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 235, 186),
      appBar: AppBar(
        title: const Text("75th REPUBLIC DAY"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 158, 202, 239),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Icon(Icons.arrow_forward_ios_sharp),
      ),
      body: Container(
        color: const Color.fromARGB(255, 240, 239, 237),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (_counter >= 1)
                ? Container(
                    height: 550,
                    width: 10,
                    color: const Color.fromARGB(255, 65, 65, 65),
                  )
                : Container(),
            Column(
              children: [
                (_counter >= 2)
                    ? Container(
                        height: 65,
                        width: 270,
                        color: const Color.fromARGB(255, 246, 185, 101),
                      )
                    : Container(),
                (_counter >= 3)
                    ? Container(
                        height: 65,
                        width: 270,
                        color: const Color.fromARGB(255, 240, 244, 246),
                      
                        child:(_counter>=4) ?
                         Image.network("https://i.pinimg.com/originals/d6/c7/c8/d6c7c88c00561033998548475e8dfb15.jpg")
                         : const SizedBox(),
                         
                         
                      
                      //  }
                      )
                    : Container(),

                (_counter >= 5)
                    ? Container(
                        height: 65,
                        width: 270,
                        color: const Color.fromARGB(255, 81, 242, 164),
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class IndFlag extends StatelessWidget {
  const IndFlag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Indian Flag"), backgroundColor: Colors.orange),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange, Colors.white, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 300,
              // color: Colors.orange, // while adding curved edges to containers apply color inside decoration : BoxDecoration
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 10,
                      blurRadius: 7,
                      offset: Offset(3, 3))
                ],
              ),
            ),
            Container(
              height: 100,
              width: 300,
              color: Colors.white,
              child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/300px-Ashoka_Chakra.svg.png"),
            ),
            Container(
              height: 100,
              width: 300,
              // color: Colors.green,  ERROR
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                //   shadow for contianer
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 10,
                      blurRadius: 7,
                      offset: Offset(3, 3))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

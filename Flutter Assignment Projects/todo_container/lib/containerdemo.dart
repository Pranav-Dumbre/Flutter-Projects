import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TODO container",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Color.fromARGB(223, 255, 201, 201),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 5),
          ),
          child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0Mv5T2MJec1nb6-I1tH55WwEKGj-xieQ1Fp-GRcHZug&s"),
        ),
      ),
    );
  }
}

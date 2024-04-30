import 'package:flutter/material.dart';

import 'topiclist.dart';

class HomeQuiz extends StatefulWidget {
  const HomeQuiz({super.key});

  @override
  State createState() => _HomeQuiz();
}

class _HomeQuiz extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/BG.jpg"),
          Center(child: GestureDetector(onTap: (){
            Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const TopicList(),
        ),
      );
          },
          child: Image.asset("assets/Logo.png"),
          ),
          ),
        ],
      ),
    );
  }
}

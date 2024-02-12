import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class SingleQuestionModel {
  final String? question;
  final List<String>? options;
  final int? answerIndex;

  const SingleQuestionModel({this.question, this.options, this.answerIndex});
}

class _QuizAppState extends State {
  bool questionScreen = true;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int score = 0;

  MaterialStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex == answerIndex) {
      if (answerIndex == allQuestions[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex !=
          allQuestions[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(
            Colors.red);
      }
    }
    if (selectedAnswerIndex != -1 &&
        answerIndex == allQuestions[questionIndex].answerIndex) {
      return const MaterialStatePropertyAll(Color.fromARGB(255, 66, 237, 40));
    }
    return const MaterialStatePropertyAll(null);
  }

  void validateCurrentScreen() {
    if (selectedAnswerIndex == -1) {
      return;
    } else {
      questionIndex++;
      selectedAnswerIndex = -1;
    }
    if (questionIndex == allQuestions.length - 1) {
      questionScreen = false;
    }
    if (selectedAnswerIndex == allQuestions[questionIndex].answerIndex) {
      score++;
    }
  }

  List allQuestions = [
    const SingleQuestionModel(
      question: "Who is the founder of Microsoft ?",
      options: ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      answerIndex: 2,
    ),
    const SingleQuestionModel(
      question: "Who is the founder of Apple ?",
      options: ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      answerIndex: 0,
    ),
    const SingleQuestionModel(
      question: "Who is the founder of Amazon ?",
      options: ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      answerIndex: 1,
    ),
    const SingleQuestionModel(
      question: "Who is the founder of Tesla ?",
      options: ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      answerIndex: 3,
    ),
    const SingleQuestionModel(
      question: "Who is the founder of Google ?",
      options: ["Steve Jobs", "Jeff Bezos", "Larry Page", "Elon Musk"],
      answerIndex: 2,
    ),
  ];

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              validateCurrentScreen();
            });
          },
          child: const Icon(Icons.forward_10_rounded),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Question : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: Text(
                allQuestions[questionIndex].question,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 0;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                child: Text(
                  "A.${allQuestions[questionIndex].options[0]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 1;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                child: Text(
                  "B.${allQuestions[questionIndex].options[1]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 2;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                child: Text(
                  "C.${allQuestions[questionIndex].options[2]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 3;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                child: Text(
                  "D.${allQuestions[questionIndex].options[3]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        body: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 30,
            ),
            Image.network(
              "https://static.vecteezy.com/system/resources/previews/018/923/361/original/gold-trophy-award-png.png",
              height: 300,
              width: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Congratulations !",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Score : $score",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  questionScreen = true;
                  questionIndex = 0;
                  selectedAnswerIndex = -1;
                  score = 0;
                });
              },
              child: const Text(
                "Restart Quiz",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ]),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}

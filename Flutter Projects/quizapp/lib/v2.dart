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

  // MaterialStateProperty<Color?> checkAnswer(int answerIndex) {
  //   if (selectedAnswerIndex == answerIndex) {
  //     if (answerIndex == allQuestions[questionIndex].answerIndex) {
  //       return const MaterialStatePropertyAll(Colors.green);
  //     } else if (selectedAnswerIndex !=
  //         allQuestions[questionIndex].answerIndex) {
  //       return const MaterialStatePropertyAll(Colors.red);
  //     }
  //   }
  //   if (selectedAnswerIndex != -1 &&
  //       answerIndex == allQuestions[questionIndex].answerIndex) {
  //     return const MaterialStatePropertyAll(Colors.green);
  //   }
  //   return const MaterialStatePropertyAll(null);
  //}
  Color? checkAnswer(int answerIndex) {
    if (selectedAnswerIndex == answerIndex) {
      if (answerIndex == allQuestions[questionIndex].answerIndex) {
        return Colors.green;
      } else if (selectedAnswerIndex !=
          allQuestions[questionIndex].answerIndex) {
        return Colors.red;
      }
    }
    if (selectedAnswerIndex != -1 &&
        answerIndex == allQuestions[questionIndex].answerIndex) {
      return Colors.green;
    }
    return Colors.blueAccent;
  }

  void validateCurrentScreen() {
    if (selectedAnswerIndex == -1) {
      return;
    }
    // else {
    //   questionIndex++;
    //   selectedAnswerIndex = -1;
    // }
    if (questionIndex == allQuestions.length - 1) {
      questionScreen = false;
    }
    if (selectedAnswerIndex == allQuestions[questionIndex].answerIndex) {
      score++;
    }
    questionIndex++;
    selectedAnswerIndex = -1;
    //setState(() {});
  }

  List allQuestions = [
    const SingleQuestionModel(
      question: "Flutter framework is based on which language ?",
      options: ["Java", "Swift", "Dart", "Python"],
      answerIndex: 2,
    ),
    const SingleQuestionModel(
      question:
          "Which widget in Flutter is used to create a clickable button ?",
      options: ["ElevatedButton", "Text", "Row", "Container"],
      answerIndex: 0,
    ),
    const SingleQuestionModel(
      question: "Which widget is used create Scrollable list in Flutter ?",
      options: ["ListView", "Column", "GridView", "SizedBox"],
      answerIndex: 0,
    ),
    const SingleQuestionModel(
      question: "What is the purpose of setState() in Flutter?",
      options: [
        "Define widget ayout",
        "Handle user input",
        "Manage animations",
        "to call build() after updating"
      ],
      answerIndex: 3,
    ),
    const SingleQuestionModel(
      question: "Who maintains the Flutter framework ?",
      options: ["Meta", "Apple", "Google", "Microsoft"],
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
          shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              validateCurrentScreen();
            });
          },
          child: const Icon(Icons.arrow_forward),
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
              height: 60,
              child: Text(
                allQuestions[questionIndex].question,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 0;
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: checkAnswer(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: Text(
                  "A.${allQuestions[questionIndex].options[0]}",
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 1;
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: checkAnswer(1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: Text(
                  "B.${allQuestions[questionIndex].options[1]}",
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 2;
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: checkAnswer(2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: Text(
                  "C.${allQuestions[questionIndex].options[2]}",
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 3;
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: checkAnswer(3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: Text(
                  "D.${allQuestions[questionIndex].options[3]}",
                  style: const TextStyle(
                    fontSize: 23,
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
          shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Center(
          child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                  "You scored : $score / ${allQuestions.length}",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 60,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        questionScreen = true;
                        questionIndex = 0;
                        selectedAnswerIndex = -1;
                        score = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Restart Quiz",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
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

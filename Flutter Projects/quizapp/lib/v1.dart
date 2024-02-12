// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: QuizApp(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class QuizApp extends StatefulWidget {
//   const QuizApp({super.key});

//   @override
//   State createState() => _QuizAppState();
// }

// class _QuizAppState extends State {
//   List<Map> allQuestions = [
//     {
//       "question": "Who is the founder of Microsoft ?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
//       "answerIndex": 2,
//     },
//     {
//       "question": "Who is the founder of Apple ?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
//       "answerIndex": 0,
//     },
//     {
//       "question": "Who is the founder of Amazon ?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
//       "answerIndex": 1,
//     },
//     {
//       "question": "Who is the founder of Tesla ?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
//       "answerIndex": 3,
//     },
//     {
//       "question": "Who is the founder of Google ?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Larry Page", "Elon Musk"],
//       "answerIndex": 2,
//     },
//   ];
//   bool questionScreen = true;
//   int questionIndex = 0;
//   int selctedIndex = -1;
//   bool isCorrect = true;

//   Scaffold isQuestionScreen() {
//     if (questionScreen == true) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Quiz App",
//             style: TextStyle(
//                 fontSize: 30, fontWeight: FontWeight.w800, color: Colors.white),
//           ),
//           backgroundColor: Colors.blue,
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               questionIndex++;
//             });
//           },
//           child: const Icon(
//             Icons.forward,
//             color: Colors.white,
//           ),
//         ),
//         body: Column(
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   "Question : ",
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 Text(
//                   "${questionIndex + 1}/${allQuestions.length}",
//                   style: const TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             SizedBox(
//               width: 350,
//               height: 50,
//               child: Text(
//                 allQuestions[questionIndex]["question"],
//                 style: const TextStyle(
//                   fontSize: 23,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             SizedBox(
//               width: 400,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     selctedIndex = 0;
//                   });
//                 },
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(
//                   isCorrect
//                       ? (selctedIndex ==
//                               allQuestions[questionIndex]["answerIndex"]
//                           ? Colors.green
//                           : Colors.red)
//                       : Colors.blue,
//                 )),
//                 child: Text(
//                   "A.${allQuestions[questionIndex]["options"][0]}",
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             SizedBox(
//               width: 400,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     selctedIndex = 1;
//                   });
//                 },
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(
//                   isCorrect
//                       ? (selctedIndex ==
//                               allQuestions[questionIndex]["answerIndex"]
//                           ? Colors.green
//                           : Colors.red)
//                       : Colors.blue,
//                 )),
//                 //  style: ButtonStyle(backgroundColor:),
//                 child: Text(
//                   "B.${allQuestions[questionIndex]["options"][1]}",
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             SizedBox(
//               width: 400,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     selctedIndex = 2;
//                   });
//                 },
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(
//                   isCorrect
//                       ? (selctedIndex ==
//                               allQuestions[questionIndex]["answerIndex"]
//                           ? Colors.green
//                           : Colors.red)
//                       : Colors.blue,
//                 )),
//                 child: Text(
//                   "C.${allQuestions[questionIndex]["options"][2]}",
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             SizedBox(
//               width: 400,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     selctedIndex = 3;
//                   });
//                 },
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(
//                   isCorrect
//                       ? (selctedIndex ==
//                               allQuestions[questionIndex]["answerIndex"]
//                           ? Colors.green
//                           : Colors.red)
//                       : Colors.blue,
//                 )),
//                 child: Text(
//                   "D.${allQuestions[questionIndex]["options"][3]}",
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     } else {
//       return Scaffold();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isQuestionScreen();
//   }
// }

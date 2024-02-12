// import "package:flutter/material.dart";

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State createState() => _QuizState();
// }

// class _QuizState extends State<Quiz> {
//   int _queCount = 1;
//   void _incCount() {
//     _queCount++;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Quiz UI",
//           style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _incCount();
//           });
//         },
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.,
//         children: [
//           const SizedBox(
//             height: 10,
//           ),
//           // Row(
//           //   // mainAxisAlignment: MainAxisAlignment.center,
//           //   children: [
//           //     Text("Question : $_queCount"),
//           //     const Text("/10"),
//           //   ],
//           // ),
//           SizedBox(
//             //try Container
//             height: 40,
//             width: 300,
//             //color: Colors.red,
//             child: Text("favourite car?"),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: const Text("A.Ford Endeavour"),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: const Text("B.MG Gloster"),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: const Text("C.Toyota Land Cruiser"),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: const Text("Mahindra Thar"),
//           ),
//         ],
//       ),
//     );
//   }
// }

import "package:flutter/material.dart";
import "dart:math";

class Palindrome extends StatefulWidget {
  const Palindrome({super.key});

  @override
  State<Palindrome> createState() => _PalindromeState();
}

class _PalindromeState extends State<Palindrome> {
  int _countPal = 0;
  List<int> listint = [101, 153, 330, 230, 565, 173];
  int _countArs = 0;
  void _calculatePalindrome() {
    int x = 0;

    setState(() {
      while (x < listint.length) {
        int temp = listint[x];
        int sum = 0;
        while (temp != 0) {
          sum = sum * 10 + (temp % 10);
          temp ~/= 10;
        }

        if (sum == listint[x]) {
          _countPal++;
        }
        x++;
      }
    });
  }

  void _calculateArmstrong() {
    int x = 0;
    setState(() {
      while (x < listint.length) {
        int temp = listint[x];
        int sum = 0;
        int length = temp.toString().length;

        while (temp > 0) {
          int digit = temp % 10;
          sum += pow(digit, length).toInt();
          temp ~/= 10;
        }

        if (sum == listint[x]) {
          _countArs++;
        }
        x++;
      }
    });
  }

  void _resetAll() {
    setState(() {
      _countPal = 0;
      _countArs = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Palindrome & Armstrong")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Palindrome number
          Text(
            "$_countPal",
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: _calculatePalindrome,
            child: const Text("Calculate Palindrome"),
          ),
          //Armstrong number
          const SizedBox(
            height: 20,
          ),
          Text(
            "$_countArs",
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: _calculateArmstrong,
            child: const Text("Calculate Armstrong"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: _resetAll,
            child: const Text("Reset ALL"),
          ),
        ],
      )),
    );
  }
}

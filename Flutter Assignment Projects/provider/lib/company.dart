import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State createState() => _BodyState();
}

class _BodyState extends State {
  @override
  Widget build(BuildContext context) {
    log("IN BODY BUILD");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Provider Practice",
          style: TextStyle(
              fontSize: 28, color: Colors.white, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.black38,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.circular(40),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(2, 2),
                    color: Colors.black,
                    blurRadius: 5,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                Provider.of<Company>(context).compName,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.circular(40),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(2, 2),
                    color: Colors.black,
                    blurRadius: 5,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                "${Provider.of<Company>(context).empCount}",
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Company with ChangeNotifier {
  String compName;
  int empCount;

  Company({required this.compName, required this.empCount});
}

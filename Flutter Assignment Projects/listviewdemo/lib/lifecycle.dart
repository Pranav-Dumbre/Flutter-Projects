// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class Lifecycle extends StatefulWidget {
  const Lifecycle({super.key});
  @override
  State createState() {
    print("in createState");
    return _LifecycleState();
  }
}

class _LifecycleState extends State {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("in didChangeDependencies");
  }

  @override
  void initState() {
    super.initState();
    print("in InitState");
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print("in setState");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("in deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("in dispose");
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    print("in build");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lifecycle",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Hello User !",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "your have pressed + this much times",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "$count",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // addNextPage();
                });
              },
              child: const Text("Next Page"),
            ),
          ],
        ),
      ),
    );
  }
}

class _NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Next Page",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          const Text(
            "IM NEXT PAGE",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("remove page "),
          ),
        ],
      )),
    );
  }
}

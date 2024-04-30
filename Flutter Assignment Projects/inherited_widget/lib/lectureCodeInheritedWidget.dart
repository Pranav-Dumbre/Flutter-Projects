import 'package:flutter/material.dart';

class SharedData extends InheritedWidget {
  final int data;
  const SharedData({super.key, required this.data, required super.child});

  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return data != oldWidget.data;
  }
}

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SharedData(
      data: 50,
      child: MaterialApp(
        home: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    SharedData sharedDataObj = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Widget",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
        backgroundColor: Colors.orange[700],
      ),
      body: Column(
        children: [
          Text(
            "${sharedDataObj.data}",
          ),
          const SizedBox(
            height: 20,
          ),
        const AccessDataWidget(),
        ],
      ),
    );
  }
}

class AccessDataWidget extends StatelessWidget {
  const AccessDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SharedData sharedDataObj = SharedData.of(context);
    return Row(
      children: [
        Text("${sharedDataObj.data}"),
        const SizedBox(
          height: 20,
        ),
        const AccessDataChild(),
      ],
    );
  }
}

class AccessDataChild extends StatelessWidget {
  const AccessDataChild({super.key});

  @override
  Widget build(BuildContext context) {
    SharedData sharedDataObj =
        context.dependOnInheritedWidgetOfExactType<SharedData>()!;
    return Text(
      "${sharedDataObj.data}",
    );
  }
}

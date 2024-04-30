import 'package:flutter/material.dart';
import 'shared_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedData(
        loginId: 0, username: "", email: "", child: const MyApp1());
  }
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  TextEditingController loginId = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SharedData sharedData = SharedData.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Inherited Widget",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              )),
          backgroundColor: Colors.orange[700],
        ),
        body: Column(
          children: [
            TextField(
              controller: loginId,
              decoration: const InputDecoration(label: Text("Login Id")),
            ),
            const SizedBox(
              height: 25,
            ),
            TextField(
              controller: email,
              decoration: const InputDecoration(label: Text("Email")),
            ),
            const SizedBox(
              height: 25,
            ),
            TextField(
              controller: username,
              decoration: const InputDecoration(label: Text("Username")),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  if (loginId.text.isNotEmpty &&
                      username.text.isNotEmpty &&
                      email.text.isNotEmpty) {
                    sharedData.email = email.text;
                    sharedData.username = username.text;
                    sharedData.loginId = int.parse(loginId.text);
                  }
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Skills()));
                },
                child: const Text("Submit"))
          ],
        ));
  }
}

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    SharedData sharedData = SharedData.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("login id : ${sharedData.loginId}"),
          Text("login name : ${sharedData.username}"),
          Text("login email : ${sharedData.email}"),
        ],
      ),
    );
  }
}

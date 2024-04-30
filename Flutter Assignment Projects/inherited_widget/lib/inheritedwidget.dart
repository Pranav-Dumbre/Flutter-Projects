import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  TextEditingController playerNameController = TextEditingController();
  TextEditingController playerCountryController = TextEditingController();
  TextEditingController teamController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Inherited Widget",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: playerNameController,
                decoration: const InputDecoration(label: Text("Player Name")),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                controller: playerCountryController,
                decoration:
                    const InputDecoration(label: Text("Player Country")),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                controller: playerCountryController,
                decoration: const InputDecoration(label: Text("IPL team")),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (playerNameController.text.isNotEmpty &&
                        playerCountryController.text.isNotEmpty &&
                        teamController.text.isNotEmpty) {
                      Player.of(context).playerName = playerNameController.text;
                      Player.of(context).playerCountry =
                          playerCountryController.text;
                      Player.of(context).team = teamController.text;
                    }
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const next()));
                  });
                },
                child: Container(
                  height: 60,
                  width: 180,
                  color: Colors.blue,
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Player extends InheritedWidget {
  String playerName;
  String playerCountry;
  String team;

  Player(
      {super.key,
      required this.playerName,
      required this.playerCountry,
      required this.team,
      required super.child});

  static Player of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Player>()!;
  }

  @override
  bool updateShouldNotify(Player oldWidget) {
    return playerName != oldWidget.playerName ||
        playerCountry != oldWidget.playerCountry ||
        team != oldWidget.team;
  }
}

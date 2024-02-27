// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';

class TextfieldDemo2 extends StatefulWidget {
  const TextfieldDemo2({super.key});

  @override
  State createState() => _TextfieldDemo2State();
}

class _TextfieldDemo2State extends State {
  final TextEditingController candidateNameController = TextEditingController();
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController companyLocationController =
      TextEditingController();

  final FocusNode txtfocus = FocusNode();
  void getval() {
    String candidatename = candidateNameController.text;
    String companyname = companyNameController.text;
    String companylocation = companyLocationController.text;

    print("candidatename : $candidatename");
    print("companyname :$companyname");
    print("companylocation : $companylocation");
  }

  bool flag = false;
  int count = 1;
  List<int> input = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Dream Company",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextField(
                onTap: () {
                  setState(() {
                    flag = false;
                  });
                },
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                controller: candidateNameController,
                decoration: const InputDecoration(
                  hintText: "Candidate Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                onTap: () {
                  setState(() {
                    flag = false;
                  });
                },
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                controller: companyNameController,
                decoration: const InputDecoration(
                  hintText: "Company Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                onTap: () {
                  setState(() {
                    flag = false;
                  });
                },
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                focusNode: txtfocus,
                controller: companyLocationController,
                decoration: const InputDecoration(
                  focusColor: Colors.purpleAccent,
                  hintText: "Company Location",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  txtfocus.unfocus();
                  setState(() {
                    getval();
                    flag = true;
                    input.add(1);
                    print(input);
                  });
                },
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 380,
                width: 400,
                color: Colors.amber,
                child: ListView.builder(
                    itemCount: input.length,
                    itemBuilder: (context, index) {
                      return Text("${input.elementAt(index)}");
                      /*if (flag == true) {
                        flag = false;
                        return Container(
                          // height: 300,
                          width: 380,

                          decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Candidate Name : ${candidateNameController.text}",
                                style: const TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Company Name : ${companyNameController.text}",
                                style: const TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Company Location : ${companyLocationController.text}",
                                style: const TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Container();
                      }*/
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

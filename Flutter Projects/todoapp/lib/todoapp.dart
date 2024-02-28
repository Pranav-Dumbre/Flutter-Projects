import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ToDoModelClass {
  final String title;
  final String description;
  final String date;

  const ToDoModelClass(
      {required this.title, required this.description, required this.date});
}

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});
  @override
  State createState() => _ToDoAppState();
}

class _ToDoAppState extends State {
  //Text Editing controllers
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  //submitButtonPressed
  bool _submitButtonPressed = false;
  //BottomSheet
  void displayBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        )),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              //to avoid keyboard overlapping the textfields
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create Task",
                  style: GoogleFonts.quicksand(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        errorText:
                            _submitButtonPressed && titleController.text.isEmpty
                                ? "Title required"
                                : null,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        errorText: _submitButtonPressed &&
                                descriptionController.text.isEmpty
                            ? "Description cant be empty"
                            : null,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "date",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        errorText:
                            _submitButtonPressed && dateController.text.isEmpty
                                ? "Please select date"
                                : null,
                        suffixIcon: const Icon(Icons.date_range_rounded),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2026),
                        );
                        String formatedDate =
                            DateFormat.yMMMd().format(pickedDate!);
                        setState(() {
                          dateController.text = formatedDate;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(0, 139, 148, 1))),
                      onPressed: () {
                        if (titleController.text.isNotEmpty &&
                            descriptionController.text.isNotEmpty &&
                            dateController.text.isNotEmpty) {
                          todoList.add(ToDoModelClass(
                              title: titleController.text,
                              description: descriptionController.text,
                              date: dateController.text));
                        }
//to check when to show errortext

                        if (titleController.text.isNotEmpty &&
                            descriptionController.text.isNotEmpty &&
                            dateController.text.isNotEmpty) {
                          Navigator.of(context).pop();
                          titleController.clear();
                          descriptionController.clear();
                          dateController.clear();
                        }
                        setState(() {
                          _submitButtonPressed = true;
                        });
                      },
                      child: Text(
                        "SUBMIT",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      )),
                )
              ],
            ),
          );
        });
  }

  List<ToDoModelClass> todoList = [];

  List<Color> cardColorList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];

  int colorIndex = 0;
  Color boxColor() {
    // if (colorIndex % 2 == 1) {
    //   colorIndex++;
    // } else {
    //   colorIndex += 2;
    // }
    // return cardColorList[colorIndex % 4];

    if (colorIndex == cardColorList.length - 1) {
      colorIndex = 0;
    } else {
      colorIndex++;
    }

    return cardColorList[colorIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do App",
          style: GoogleFonts.quicksand(
              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          displayBottomSheet();
          _submitButtonPressed = false;
        },
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 112,
                width: 330,
                decoration: BoxDecoration(
                  color: boxColor(),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(10, 10),
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      //column1
                      Column(
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                  blurRadius: 15,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Image.network(
                                "https://cdn-icons-png.freepik.com/256/11207/11207604.png"),
                          ),
                          const Spacer(),
                          Text(
                            //date
                            todoList[index].date,
                            style: GoogleFonts.quicksand(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),

                      //column2
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              todoList[index].title,
                              style: GoogleFonts.quicksand(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: Text(
                              todoList[index].description,
                              style: GoogleFonts.quicksand(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(
                                width: 210,
                              ),
                              GestureDetector(
                                child: const Icon(
                                  Icons.edit_outlined,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                  size: 22,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                child: const Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                  size: 22,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

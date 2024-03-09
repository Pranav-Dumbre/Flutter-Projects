import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

//MODEL CLASS
class ToDoModelClass {
  String title;
  String description;
  String date;

  ToDoModelClass(
      {required this.title, required this.description, required this.date});
}
//------------------------------------------------------------------------------

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});
  @override
  State createState() => _ToDoAppState();
}

//STATE CLASS
class _ToDoAppState extends State {
  //Text Editing controllers - to fetch data from textfield/textformfield
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  bool docardedit = false;
  //KEYS 
  final GlobalKey<FormState> _cardKey = GlobalKey<FormState>();
  //SUBMIT----------------------------------------------------------------------
  void submit(bool docardedit, [ToDoModelClass? toDoModelobj]) {
    // Add Logic
    if (titleController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty &&
        dateController.text.isNotEmpty) {
      if (!docardedit) {
        setState(() {
          todoList.add(
            ToDoModelClass(
              title: titleController.text.trim(),
              description: descriptionController.text.trim(),
              date: dateController.text.trim(),
            ),
          );
          clearController();
        });
      }
      //  Edit Logic
      else {
        setState(
          () {
            toDoModelobj!.date = dateController.text.trim();
            toDoModelobj.description = descriptionController.text.trim();
            toDoModelobj.title = titleController.text.trim();
          },
        );
      }
      clearController();
      Navigator.of(context).pop();
    } else {}
  }

  //----------------------------------------------------------------------------
  //TO EDIT A SPECIFIC CARD
  void editCard(ToDoModelClass toDoModelobj) {
    titleController.text = toDoModelobj.title;
    dateController.text = toDoModelobj.date;
    descriptionController.text = toDoModelobj.description;

    displayBottomSheet(true, toDoModelobj);
  }

  //----------------------------------------------------------------------------
  //TO DELETE A SPECIFIC CARD
  void deleteCard(ToDoModelClass toDoModelobj) {
    setState(() {
      todoList.remove(toDoModelobj);
    });
  }

  //----------------------------------------------------------------------------
  //CLEARS CONTROLLERS
  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  //----------------------------------------------------------------------------
  //BottomSheet
  void displayBottomSheet(bool docardedit, [ToDoModelClass? toDoModalObj]) {
    showModalBottomSheet(
        //isScrollControlled scroll screen up when keyboard is in use
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
                    color: const Color.fromRGBO(0, 21, 36, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Form(
                  key: _cardKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: titleController,
                        //key: usernameKey,
                        decoration: const InputDecoration(
                          hintText: " Title",
                          label: Text(
                            "Title",
                            style: TextStyle(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(255, 125, 0, 1),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter Title";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: descriptionController,
                        //key: usernameKey,
                        decoration: const InputDecoration(
                          hintText: " Description",
                          label: Text(
                            "Description",
                            style: TextStyle(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(255, 125, 0, 1),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Description is Mandatory";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: dateController,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: "Date",
                          label: const Text(
                            "Date",
                            style: TextStyle(color: Colors.black),
                          ),
                          suffixIcon: const Icon(Icons.date_range_rounded),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(255, 125, 0, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please select date";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            barrierColor:
                                const Color.fromRGBO(255, 125, 0, 0.3),
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2026),
                            builder: (BuildContext context, Widget? child) {
                              return Theme(
                                data: ThemeData.light().copyWith(
                                  colorScheme:
                                      const ColorScheme.light().copyWith(
                                    primary: Colors.orange[800],
                                    background: Colors.red,
                                  ),
                                ),
                                child: child!,
                              );
                            },
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
                          Color.fromRGBO(255, 107, 53, 1),
                        ),
                      ),
                      onPressed: () {
                        if (docardedit) {
                          submit(docardedit, toDoModalObj);
                        } else {
                          submit(docardedit);
                        }

                        setState(() {
                          _cardKey.currentState!.validate();
                        });
                      },
                      child: Text(
                        "SUBMIT",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      )),
                )
              ],
            ),
          );
        });
  }

//------------------------------------------------------------------------------
//LIST OF CARDS
  List<ToDoModelClass> todoList = [];
//COLORS OF CARD
  List<Color> cardColorList = const [
    Color.fromRGBO(253, 242, 187, 1),
    Color.fromRGBO(252, 219, 190, 1),
    Color.fromRGBO(250, 253, 207, 1),
    Color.fromRGBO(254, 198, 187, 1),
    Color.fromRGBO(255, 203, 215, 1),
    Color.fromRGBO(255, 205, 216, 1),
  ];

  int colorIndex = 0;
  Color boxColor() {
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(20, 20),
            bottomRight: Radius.elliptical(20, 20),
          ),
        ),
        title: Text(
          "OrganiseOwl",
          style: GoogleFonts.quicksand(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(255, 107, 53, 1),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          docardedit = false;
          displayBottomSheet(docardedit);
        },
        backgroundColor: const Color.fromRGBO(21, 97, 109, 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 180,
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
                            padding: const EdgeInsets.all(2),
                            child: Image.asset(
                              "assets/owlC.png",
                            ),
                          ),
                          const Spacer(),
                          Text(
                            //date
                            todoList[index].date,
                            style: GoogleFonts.quicksand(
                              color: const Color.fromRGBO(21, 97, 109, 1),
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
                            height: 30,
                            width: 250,
                            child: Text(
                              todoList[index].title,
                              style: GoogleFonts.quicksand(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 97,
                            width: 250,
                            child: Scrollbar(
                              thumbVisibility: true,
                              child: SingleChildScrollView(
                                //padding: const EdgeInsets.all(3),
                                child: Text(
                                  todoList[index].description,
                                  style: GoogleFonts.quicksand(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
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
                                onTap: () {
                                  setState(() {
                                    editCard(todoList[index]);
                                  });
                                },
                                child: const Icon(
                                  Icons.edit_outlined,
                                  color: Color.fromRGBO(21, 97, 109, 1),
                                  size: 22,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    deleteCard(todoList[index]);
                                  });
                                },
                                child: const Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(21, 97, 109, 1),
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

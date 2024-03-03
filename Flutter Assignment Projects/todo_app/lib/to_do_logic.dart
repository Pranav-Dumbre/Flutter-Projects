import 'to_do_modal_class.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:hexcolor/hexcolor.dart';
import 'user_data.dart';

class ToDoUI extends StatefulWidget {
  const ToDoUI({super.key});

  @override
  State createState() => _ToDoUIState();
}

class _ToDoUIState extends State {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  final TextEditingController _userNameTextEditingController = 
      TextEditingController();

  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool loginScreen = false;

  String enteredPassword = "";

  List cardColor = [
    HexColor("#E4C1F9"),
    HexColor("#A9DEF9"),
    HexColor("#D0F4DE"),
    HexColor("#FCF6BD"),
  ];

  List<ToDoModalClass> todoList = [
    ToDoModalClass(
      title: 'Problem Solving',
      description: "Solve Leetcode problem before 12 pm",
      date: 'Feb 29 2024',
    ),
    ToDoModalClass(
      title: 'Meeting',
      description: "Attend meeting with Project Members at 1 pm",
      date: 'Feb 29 2024',
    ),
    ToDoModalClass(
      title: 'UI Challenge',
      description: "Solve today's UI Challenge",
      date: 'Feb 29 2024',
    ),
  ];

  List<User> userList = const [
    User(userName: "kartik", password: "k123"),
    User(userName: "onkar", password: "o123"),
  ];

  void clearController() {
    _titleController.clear();
    _descriptionController.clear();
    _dateController.clear();
  }

  void submit(bool doEdit, [ToDoModalClass? toDoModalobj]) {
    // Add Logic
    if (_titleController.text.isNotEmpty &&
        _descriptionController.text.isNotEmpty &&
        _dateController.text.isNotEmpty) {
      if (!doEdit) {
        setState(() {
          todoList.add(
            ToDoModalClass(
              title: _titleController.text.trim(),
              description: _descriptionController.text.trim(),
              date: _dateController.text.trim(),
            ),
          );
        });
      }
      //  Edit Logic
      else {
        setState(
          () {
            toDoModalobj!.date = _dateController.text.trim();
            toDoModalobj.description = _descriptionController.text.trim();
            toDoModalobj.title = _titleController.text.trim();
          },
        );
      }
    }

    clearController();
  }

  void _editCard(ToDoModalClass toDoModalobj) {
    _titleController.text = toDoModalobj.title;
    _dateController.text = toDoModalobj.date;
    _descriptionController.text = toDoModalobj.description;

    _showBottomSheet(true, toDoModalobj);
  }

  void _deleteCard(ToDoModalClass toDoModalobj) {
    setState(() {
      todoList.remove(toDoModalobj);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _dateController.dispose();
    _descriptionController.dispose();
    _userNameTextEditingController.dispose();
    _passwordTextEditingController.dispose();
  }

  void validateNextScreen() {
    bool loginValidated = _formKey.currentState!.validate();

    if (loginValidated) {
      String enteredUserName = _userNameTextEditingController.text;
      enteredPassword = _passwordTextEditingController.text;

      bool matchingUser = userList.any(
        (element) =>
            element.userName == enteredUserName &&
            element.password == enteredPassword,
      );

      if (matchingUser) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Login Successful"),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 1),
          ),
        );
        loginScreen = true;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Invalid Username or Password"),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 5),
            showCloseIcon: true,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(5),
          ),
        );
      }
    }
  }

  void _showBottomSheet(bool doEdit, [ToDoModalClass? toDoModalObj]) {
    showModalBottomSheet(
      // 2 - showModalBottomSheet takes full screen to show textfield
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          // 1 -  to avoid keyboard overlap of the screen
          padding: MediaQuery.of(context).viewInsets,
          child: Column(
            // 3 - showModalBottomSheet takes min size, not full screen
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Create Task",
                style: GoogleFonts.quicksand(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Task Title",
                    style: GoogleFonts.quicksand(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(2, 167, 177, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      hintText: "Enter Task Title",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(2, 167, 177, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Task Description",
                    style: GoogleFonts.quicksand(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(2, 167, 177, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                      hintText: "Enter Task Description",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(2, 167, 177, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Task Date",
                    style: GoogleFonts.quicksand(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(2, 167, 177, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      hintText: "Enter Task Date",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(2, 167, 177, 1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      suffix: const Icon(
                        Icons.calendar_month_rounded,
                      ),
                    ),
                    // readOnly: true,
                    onTap: () async {
                      DateTime? pickDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2025),
                      );

                      String formatDate = DateFormat.yMMMd().format(pickDate!);

                      setState(
                        () {
                          _dateController.text = formatDate;
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color.fromRGBO(2, 167, 177, 0.7),
                ),
                onPressed: () {
                  if (doEdit) {
                    submit(doEdit, toDoModalObj);
                  } else {
                    submit(doEdit);
                  }
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Submit",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  bool isPasswordVisible = false;

  Scaffold loginOrToDoScrren() {
    if (loginScreen == false) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(2, 167, 177, 0.5),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Image.network(
                      "https://media.mktg.workday.com/is/image/workday/illustration-people-login?fmt=png-alpha&wid=1100",
                      height: 290,
                      width: 290,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _userNameTextEditingController,
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        label: const Text("Enter Username"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: const Icon(
                          Icons.person,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Username";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _passwordTextEditingController,
                      // Hides Text with dots i.e (.....)
                      obscureText: !isPasswordVisible,
                      // default obscure characetr is dot, if we want to change then we can use obscureCharacter
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        label: const Text("Enter Password"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          child: Icon(
                            isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.remove_red_eye_outlined,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Password";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          validateNextScreen();
                        });
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(2, 167, 177, 1),
                        ),
                        foregroundColor: MaterialStatePropertyAll(
                          Colors.greenAccent,
                        ),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "To-Do List",
            style: GoogleFonts.quicksand(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 0.7),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 5),
          child: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              return Container(
                height: 112,
                width: 330,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: cardColor[index % cardColor.length],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 1),
                      blurRadius: 10,
                      spreadRadius: 1,
                      color: Color.fromRGBO(2, 167, 177, 0.4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          margin: const EdgeInsets.fromLTRB(10, 25, 25, 10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Image.asset("assets/1.png"),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                todoList[index].title,
                                style: GoogleFonts.quicksand(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                todoList[index].description,
                                style: GoogleFonts.quicksand(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          todoList[index].date,
                          style: GoogleFonts.quicksand(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _editCard(todoList[index]);
                              },
                              child: const Icon(
                                Icons.edit,
                                color: Color.fromRGBO(2, 167, 177, 1),
                                size: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                _deleteCard(todoList[index]);
                              },
                              child: const Icon(
                                Icons.delete,
                                color: Color.fromRGBO(2, 167, 177, 1),
                                size: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            clearController();
            _showBottomSheet(false);
          },
          backgroundColor: const Color.fromRGBO(0, 139, 148, 0.7),
          shape: const CircleBorder(eccentricity: 1),
          child: const Icon(
            Icons.add,
            size: 40,
            color: Colors.white,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return loginOrToDoScrren();
  }
}

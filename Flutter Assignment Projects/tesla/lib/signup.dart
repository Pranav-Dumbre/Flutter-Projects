import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/564x/01/50/af/0150afa24b80b0a16a78fdf31b357701.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                children: const [
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: "First Name",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      // errorText: "Enter valid Email Address",
                      // errorStyle: TextStyle(
                      //   color: Colors.red,
                      // ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: "Contact Number",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: "College Name",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: "Course Name",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: "Year of Study",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      alignLabelWithHint: true,
                      hintText: "eg.FE,SE,TE,BE",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    //cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          // backgroundColor: Colors.white,
                          //  decorationColor: Colors.red,
                        ),
                        hintText:
                            "min a number & a Special Character is required",
                        hintStyle: TextStyle(
                          color: Colors.white38,
                        ),
                        alignLabelWithHint: true),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FloatingActionButton(onPressed: )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

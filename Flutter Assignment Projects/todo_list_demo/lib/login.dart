import 'package:flutter/material.dart';
import 'nextdemo.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => _LoginState();
}

//MODEL CLASS
class User {
  final String user;
  final String pass;

  const User({required this.user, required this.pass});
}

class _LoginState extends State<Login> {
  List<User> userList = [
    const User(user: "Pranav", pass: "Pranav123"),
    const User(user: "Aditya", pass: "Aditya123"),
  ];
  //CONTROLLERS - to fetch / access data in TextFields/TextFormFields
  TextEditingController usenameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  /*
   KEYS - to uniquely identify widget in the tree 

   - same widgets in same tree and at at same level CANNOT have same key
   - Key accepts String
   - When we use key of FORMFIELDSTATE we require as much global keys as much 
     TextFormFields we have .
   - When we use key of FORMSTATE we require ONLY ONE global key.
   - Global key helps use to create instance of aonther class and we can make 
     use of any method from that class 
   - here We are using VALIDATE() method from FormState 
   - FormState's validate () method internally calls to
     FormFieldState's validate() and uses for loop.
   - function in validator of TextFormField is called by Flutter engine according 
    to key     
  */

  //KEYS
  // GlobalKey<FormFieldState> usernameKey = GlobalKey<FormFieldState>();
  // GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();

  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();

  //loggedin to direct to next page
  bool _loggedin = false;
  void ShowNextPage() {
    if (_loggedin) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => YourNextPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login Page",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.orange[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _loginKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.network(
                "https://icones.pro/wp-content/uploads/2022/07/icones-d-administration-orange.png",
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: usenameController,
                //key: usernameKey,
                decoration: const InputDecoration(
                  hintText: "Enter Username",
                  label: Text("Username"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  print("IN USERNAME VALIDATOR");
                  if (value == null || value.isEmpty) {
                    return "Please enter username";
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
                controller: passwordController,
                obscureText: true,
                //key: passwordKey,
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                ),
                validator: (value) {
                  print("IN PASSWORD VALIDATOR");
                  if (value == null || value.isEmpty) {
                    return "Please enter Password";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    bool loginValidated = _loginKey.currentState!.validate();
                    if (loginValidated &&
                        userList.any(
                          (element) =>
                              element.user == usenameController.text &&
                              element.pass == passwordController.text,
                        )) {
                      _loggedin = true;
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Login SuccessFul"),
                      ));
                      ShowNextPage();
                    } else {
                      _loggedin = false;
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Invalid Credentials , Try Again!"),
                        ),
                      );
                    }

                    // bool usernameValidated = usernameKey.currentState!.validate();
                    // bool passwordValidated = passwordKey.currentState!.validate();
                    // if(usernameValidated && passwordValidated){
                    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    //     content: Text("Login SuccessFul"),
                    //   ));
                    // }else{
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(
                    //       content: Text("Login Failed !"),
                    //     ),
                    //   );
                    // }
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
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

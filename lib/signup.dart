import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skin_ML/login.dart';

// ignore: camel_case_types
class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

final FirebaseAuth _auth = FirebaseAuth.instance;

// ignore: camel_case_types
class _signupState extends State<signup> {
  TextEditingController email = new TextEditingController();
  TextEditingController passwd = new TextEditingController();
  bool _success;

  void _register() async {
    final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
      email: email.text.trim(),
      password: passwd.text.trim(),
    ))
        .user;
    if (user != null) {
      setState(() {
        _success = true;
      });
    } else {
      setState(() {
        _success = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(14, 49, 80, 1),
        body: Container(
          color: Color.fromRGBO(14, 49, 80, 1),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Container(
                      child: Image.asset(
                        'assets/SkinShine with text.png',
                        height: 200,
                        width: 200,
                      ),
                      // child: Image.asset("assets/SkinShine with text.png"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      child: Text(
                        'Sign UP',
                        style: GoogleFonts.robotoSlab(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(8),

                      // alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      controller: email,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Email id can't be empty";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      obscureText: true,
                      controller: passwd,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Password can't be empty";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => login()),
                      );
                    },
                    child: Text(
                      "                     Already have account? Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    alignment: Alignment.center,
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: () {
                        _register();
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.black, backgroundColor: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      _success == null
                          ? ''
                          : (_success
                              ? Future.delayed(
                                  Duration.zero,
                                  () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => login()),
                                    );
                                  },
                                )
                              : 'Sign in failed'),
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    email.dispose();
    passwd.dispose();
    super.dispose();
  }
}

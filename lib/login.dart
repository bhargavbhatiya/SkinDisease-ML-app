import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:skin_ML/Homepage/HomePage.dart';
import 'package:skin_ML/signup.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

final FirebaseAuth _auth = FirebaseAuth.instance;

// ignore: camel_case_types
class _loginState extends State<login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _success;
  // ignore: unused_field
  String _userEmail;

  void _signInWithEmailAndPassword() async {
    final FirebaseUser user = (await _auth.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    ))
        .user;

    if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user.email;
      });
    } else {
      setState(() {
        _success = false;
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
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset("assets/SkinShine with text.png"),
                  Container(
                    child: const Text(
                      'Login to your SkinShine account',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        focusColor: Colors.white,
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
                      controller: _passwordController,
                      decoration: const InputDecoration(labelText: 'Password'),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Password can't be empty";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signup()),
                      );
                    },
                    child: Text(
                      "Don't have account? Sign up",
                      textAlign: TextAlign.center,
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
                        _signInWithEmailAndPassword();
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black, backgroundColor: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    color: Color.fromRGBO(14, 49, 80, 1),
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
                                          builder: (context) => MyHomePage()),
                                    );
                                  },
                                )
                              : 'Sign in failed'),
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Color.fromRGBO(14, 49, 80, 1),
                      ),
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
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

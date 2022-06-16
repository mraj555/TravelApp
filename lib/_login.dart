import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/_home.dart';

import '_signup.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  var _Formkey = GlobalKey<FormState>();
  var _visible = true;
  var _passcontroller = TextEditingController();
  var _emailcontroller = TextEditingController();
  var mail = '';
  var a = 'Jenil Ambaliya';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Form(
          key: _Formkey,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 10,
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: 'Welcome',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          children: [
                            TextSpan(
                              text: '\nSIGN IN',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Stack(
                      children: [
                        _Container(),
                        Card(
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            child: TextFormField(
                              controller: _emailcontroller,
                              validator: (mail) {
                                if (mail!.isEmpty) {
                                  return 'Email is required.';
                                }
                                if (!RegExp(
                                        '^[a-zA-Z0-9+_.-]+@[a-zA-Z.-]+.[a-zA-Z]')
                                    .hasMatch(mail)) {
                                  return 'Enter a Valid Email.';
                                }
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.mail,
                                ),
                                hintText: 'Email',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        _Container(),
                        Card(
                          child: Container(
                            width: 345,
                            margin: EdgeInsets.only(left: 20),
                            child: TextFormField(
                              validator: (password) {
                                if (password!.isEmpty) {
                                  return 'Password is required.';
                                }
                                if (!RegExp(
                                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                    .hasMatch(password)) {
                                  return 'Enter A Valid Password.';
                                }
                              },
                              controller: _passcontroller,
                              obscureText: _visible,
                              onChanged: (pass) {
                                setState(
                                  () {
                                    pass = _passcontroller.text;
                                  },
                                );
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                ),
                                suffixIcon: _passcontroller.text.isEmpty
                                    ? null
                                    : IconButton(
                                        icon: _visible
                                            ? Icon(
                                                Icons.visibility,
                                              )
                                            : Icon(
                                                Icons.visibility_off,
                                              ),
                                        onPressed: () {
                                          setState(
                                            () {
                                              _visible = !_visible;
                                            },
                                          );
                                        },
                                      ),
                                hintText: 'Password',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: TextButton(
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 350,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow,
                            offset: Offset(5.0, 5.0),
                            blurRadius: 15.0,
                            spreadRadius: -1.0,
                          ),
                          BoxShadow(
                            color: Colors.amber,
                            offset: Offset(-5.0, -5.0),
                            blurRadius: 15.0,
                            spreadRadius: -1.0,
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.yellow,
                            Colors.amber,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Card(
                        elevation: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Sign In',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          onPressed: () {
                            setState(
                              () {
                                if (_Formkey.currentState!.validate()) {
                                  setState(
                                    () {
                                      mail = _emailcontroller.text;
                                    },
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Sign In Successfully',
                                        textAlign: TextAlign.center,
                                      ),
                                      width: 250,
                                      duration: Duration(seconds: 2),
                                    ),
                                  );
                                  Timer(
                                    Duration(seconds: 2),
                                    () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => MyHome(
                                              email: _emailcontroller.text),
                                        ),
                                      );
                                    },
                                  );
                                  FocusScope.of(context).unfocus();
                                }
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Text(
                        'OR',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingActionButton(
                          heroTag: 'btn1',
                          onPressed: () {},
                          child: Image.asset('assets/logo/google.png'),
                        ),
                        FloatingActionButton(
                          heroTag: 'btn2',
                          onPressed: () {},
                          child: Image.asset('assets/logo/facebook.png'),
                        ),
                        FloatingActionButton(
                          heroTag: 'btn3',
                          onPressed: () {},
                          child: Image.asset('assets/logo/twitter.png'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Don\'t have an Account ? ',
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15),
                          children: [
                            TextSpan(
                              text: 'Sign Up',
                              style: Theme.of(context).textTheme.bodyText2,
                              recognizer: TapGestureRecognizer()
                                ..onTap =
                                    () => Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            builder: (context) => MySignUp(),
                                          ),
                                        ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _Container() {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 350,
      height: 55,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.amber,
            offset: Offset(5.0, 5.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.yellow,
            offset: Offset(-5.0, -5.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.amber,
            Colors.yellow,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

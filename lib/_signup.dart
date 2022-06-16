import 'dart:async';
import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/_home.dart';
import 'package:travelapp/_login.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({Key? key}) : super(key: key);

  @override
  _MySignUpState createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  var _Formkey = GlobalKey<FormState>();
  var _visible = true;
  var _groupValue = 0;
  var dob = DateTime.now();
  var _passcontroller = TextEditingController();
  var _cpasscontroller = TextEditingController();
  var _dobcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.amberAccent,
          body: Form(
            key: _Formkey,
            child: ListView(
              physics: ClampingScrollPhysics(),
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
                                text: '\nSIGN UP',
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
                                validator: (user) {
                                  if (user!.isEmpty) {
                                    return 'User Name is required.';
                                  }
                                  if (!RegExp('^(?=.*?[a-z])(?=.*?[0-9])')
                                      .hasMatch(user)) {
                                    return 'Enter a Valid User Name.';
                                  }
                                },
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                  ),
                                  hintText: 'User Name',
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
                              margin: EdgeInsets.only(left: 20),
                              child: TextFormField(
                                validator: (mail) {
                                  if (mail!.isEmpty) {
                                    return 'Email address is required.';
                                  }
                                  if (!RegExp(
                                          '^[a-zA-Z0-9+_.-]+@[a-zA-Z.-]+.[a-z]')
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
                                controller: _dobcontroller,
                                readOnly: true,
                                validator: (birth) {
                                  if (birth!.isEmpty) {
                                    return 'Select Birth Date.';
                                  }
                                },
                                onChanged: (dob) {
                                  setState(
                                    () {
                                      _dobcontroller.text = dob;
                                    },
                                  );
                                },
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.cake_sharp,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      Icons.today_sharp,
                                      color: Colors.black,
                                    ),
                                    onPressed: () async {
                                      DateTime? d = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime(1970),
                                        firstDate: DateTime(1970),
                                        lastDate: DateTime(
                                            DateTime.now().year - 18,
                                            dob.month,
                                            dob.day),
                                        builder: (context, child) {
                                          return Theme(
                                            data: ThemeData(
                                              primaryColor: Colors.black,
                                              buttonTheme: ButtonThemeData(
                                                textTheme:
                                                    ButtonTextTheme.primary,
                                              ),
                                            ).copyWith(
                                              colorScheme: ColorScheme.light(
                                                primary: Colors.amber,
                                                onPrimary: Colors.black,
                                                surface: Colors.deepOrange,
                                                onSurface: Colors.black,
                                              ),
                                            ),
                                            child: child!,
                                          );
                                        },
                                      );
                                      if (d != null) {
                                        setState(
                                          () {
                                            dob = d;
                                            _dobcontroller.text =
                                                '${d.day}/${d.month}/${d.year}';
                                          },
                                        );
                                      }
                                    },
                                  ),
                                  hintText: 'Date Of Birth',
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
                                    return 'Enter a Valid Password.';
                                  }
                                },
                                controller: _passcontroller,
                                obscureText: _visible,
                                onChanged: (pass) {
                                  setState(() {
                                    pass = _passcontroller.text;
                                  });
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
                                  hintText: 'New Password',
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
                                    return 'Confirm your password.';
                                  }
                                  if (_passcontroller.text !=
                                      _cpasscontroller.text) {
                                    return 'Both Passwords Are Not Match';
                                  }
                                },
                                controller: _cpasscontroller,
                                obscureText: true,
                                onChanged: (pass) {
                                  setState(() {
                                    pass = _cpasscontroller.text;
                                  });
                                },
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.password,
                                  ),
                                  hintText: 'Confirm Password',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            child: TextFormField(
                              readOnly: true,
                              validator: (gen) {
                                if (_groupValue == 0) {
                                  return 'Select A Gender.';
                                }
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 350,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 165,
                                  child: RadioListTile(
                                    groupValue: _groupValue,
                                    value: 1,
                                    title: Text('Male'),
                                    onChanged: (val) {
                                      setState(
                                        () {
                                          _groupValue = val as int;
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  width: 165,
                                  child: RadioListTile(
                                    groupValue: _groupValue,
                                    value: 2,
                                    title: Text('Female'),
                                    onChanged: (val) {
                                      setState(
                                        () {
                                          _groupValue = val as int;
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
                              'Sign Up',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  if (_Formkey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'New Account Created Successfully',
                                          textAlign: TextAlign.center,
                                        ),
                                        duration: Duration(seconds: 2),
                                        width: 350,
                                      ),
                                    );
                                    Timer(
                                      Duration(seconds: 3),
                                      () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => MyLogin(),
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
                        height: 25,
                      ),
                      Center(
                        child: Text(
                          'OR',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                        height: 30,
                      ),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Already have an Account ? ',
                            style: GoogleFonts.roboto(
                                color: Colors.black, fontSize: 15),
                            children: [
                              TextSpan(
                                text: 'Sign In',
                                style: Theme.of(context).textTheme.bodyText2,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () =>
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) => MyLogin(),
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

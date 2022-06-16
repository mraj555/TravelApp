import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/_home.dart';
import 'package:travelapp/_login.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        snackBarTheme: SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.black26,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
        ),
        cardTheme: CardTheme(
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.transparent,
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIconColor: Colors.black,
          hintStyle: TextStyle(color: Colors.black),
          suffixIconColor: Colors.black,
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(Colors.black),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.amberAccent,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          shadowColor: Colors.yellow,
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        colorScheme: ColorScheme.light(secondary: Colors.amber),
      ),
      debugShowCheckedModeBanner: false,
      home: MyLogin(),
    ),
  );
}

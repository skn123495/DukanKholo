import 'package:flutter/material.dart';

import 'constants.dart';

// ThemeData theme() {
//   return ThemeData(
//     scaffoldBackgroundColor: Colors.white,
//     fontFamily: "Livvic",
//     appBarTheme: appBarTheme(),
//     textTheme: textTheme(),
//     // inputDecorationTheme: inputDecorationTheme(),
//     // visualDensity: VisualDensity.adaptivePlatformDensity,
//   );
// }

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: TextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: TextColor),
    bodyText2: TextStyle(color: TextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Color(0xFF66CCCE),
    // elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: PrimaryWhite),
    textTheme: TextTheme(
      headline6: TextStyle(
          color: Color(0XFF8B8B8B), fontSize: 18, fontFamily: 'Livvic'),
    ),
  );
}

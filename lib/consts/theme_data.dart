import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool darkTheme, BuildContext context) {
    return darkTheme
        ? ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Color.fromARGB(255, 39, 38, 38),
            primaryColor: Colors.black,
            appBarTheme: AppBarTheme(
              color: Colors.black,
              iconTheme: IconThemeData(color: Colors.white),
              titleTextStyle: TextStyle(color: Colors.white),
            ),
          )
        : ThemeData.light().copyWith(
            scaffoldBackgroundColor: Colors.white,
            primaryColor: Colors.blue,
            appBarTheme: AppBarTheme(
              color: Colors.blue,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(color: Colors.black),
            ),
          );
  }
}

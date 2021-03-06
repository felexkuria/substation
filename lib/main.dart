import 'package:flutter/material.dart';
import 'package:substation/screens/dashboard.dart';
import 'package:substation/screens/homescreen.dart';
import 'package:substation/screens/loading.dart';
import 'package:substation/screens/reading_screen.dart';
import 'package:substation/screens/worker.dart';

const inActiveCardColor = Color(0xFFF9FAFC);
const activeCardColor = Color(0xFF3A3756);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xFF343150),
      timePickerTheme: TimePickerThemeData(
          backgroundColor: Color(0xFF343150),
          dialHandColor: activeCardColor,
          // hourMinuteColor: inActiveCardColor,
          hourMinuteTextColor: Colors.white),
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/dashboard': (context) => DashBoard(),
      '/reading': (context) => ReadingScreen(),
      'worker': (context) => Worker(),
      'loading': (context) => Loading(),

      //'worker': (context) => Loading(),
    },
  ));
}

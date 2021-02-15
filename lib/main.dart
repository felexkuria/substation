import 'package:flutter/material.dart';
import 'package:substation/screens/dashboard.dart';
import 'package:substation/screens/homescreen.dart';
import 'package:substation/screens/loading.dart';
import 'package:substation/screens/reading_screen.dart';
import 'package:substation/screens/worker.dart';

const inActiveCardColor = Color(0xFFF9FAFC);
const activeCardColor = Color(0xFF3A3756);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    ),
  );
}

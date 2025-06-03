import 'package:flutter/material.dart';

import 'ExpenseTracker.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      useMaterial3: true,
    ),
    home : ExpenseTracker(),
    debugShowCheckedModeBanner: false,
  ));
}


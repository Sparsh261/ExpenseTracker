import 'package:flutter/material.dart';
import 'ExpenseTracker.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(133, 241, 180, 8)
);


void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kColorScheme,
      appBarTheme: AppBarTheme().copyWith(
        backgroundColor: kColorScheme.primaryContainer,
        titleSpacing: 20
      ),
      cardTheme: CardTheme().copyWith(
        color: kColorScheme.secondaryContainer,
        margin: EdgeInsets.symmetric(horizontal: 14, vertical: 8)
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: kColorScheme.inversePrimary)),
      textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
          fontWeight :  FontWeight.bold,
          color: kColorScheme.onSecondaryContainer,
          fontSize: 26
        )
      )
    ),
    home : ExpenseTracker(),
    debugShowCheckedModeBanner: false,
  ));
}


import 'package:flutter/material.dart';
import 'package:iti_course/bottom_call.dart';
import 'screens/meditate_screen.dart';
import 'screens/happy_morning_screen.dart';
import 'nutrition_table_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // MeditateScreen(),
      // HappyMorningScreen(),
      // NutritionTableScreen()
      BottomCall(),
    );
  }
}





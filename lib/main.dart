import 'package:flutter/material.dart';
import 'screens/meditate_screen.dart';
import 'screens/happy_morning_screen.dart';
import 'screens/nutrition_table_screen.dart';

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
      appBar: AppBar(title: const Text("Assignment Screens")),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Meditate Screen"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const MeditateScreen()));
            },
          ),
          ListTile(
            title: const Text("Happy Morning Screen"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const HappyMorningScreen()));
            },
          ),
          ListTile(
            title: const Text("Nutrition Table Screen"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const NutritionTableScreen()));
            },
          ),
        ],
      ),
    );
  }
}





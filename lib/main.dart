import 'package:flutter/material.dart';
import 'package:login_api_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.blueAccent,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
          ),
          bodyLarge: TextStyle(
            fontSize: 20,
          )
        )
      ),
    );
  }
}
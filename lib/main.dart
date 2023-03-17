import 'package:first_project/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Planner App',
      theme: ThemeData(
       //colorScheme: ColorScheme(brightness: Brightness.light, primary: Color.fromRGBO(119, 104, 113, 1), onPrimary: onPrimary, secondary: secondary, onSecondary: onSecondary, error: error, onError: onError, background: background, onBackground: onBackground, surface: surface, onSurface: onSurface,),
        primaryColor:const Color.fromRGBO(13, 31, 45, 1),
      // canvasColor: const Color.fromARGB(255, 255, 207, 250),
      ),
      home: const WelcomeScreen(),
    );
  }
}



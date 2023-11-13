import 'package:assignment_task/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: const Color.fromRGBO(249, 249, 249, 1),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(249, 249, 249, 1),
          )),
      home: const HomePage(),
    );
  }
}

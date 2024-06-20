import 'package:flutter/material.dart';
import 'package:task_2_to_do_list_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter To Do List App',
      home: HomeScreen(),
    );
  }
}

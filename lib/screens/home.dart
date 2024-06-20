import 'package:flutter/material.dart';
import 'package:task_2_to_do_list_app/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdBGColor,
        title: const Row(
          children: [
            Icon(
              Icons.menu,
              color: tdBlack,
              size: 30,
            )
          ],
        ),
      ),
      body: Container(
        child: const Text("This is container"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_2_to_do_list_app/constants/colors.dart';
import 'package:task_2_to_do_list_app/model/todo.dart';
import 'package:task_2_to_do_list_app/widgets/todo_items.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  searchbox(),
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 50, bottom: 20),
                          child: const Text(
                            'All ToDos',
                            style: TextStyle(
                                color: tdBlack,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        for (ToDo todoo in todosList) ToDoItem(todo: todoo),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget searchbox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 25),
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: tdGrey)),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: tdBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              child: Image.asset('assets/images/todo.png'),
            ),
          )
        ],
      ),
    );
  }
}

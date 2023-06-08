import 'package:flutter/material.dart';
import 'package:my_frist_app/components/todo_tile.dart';

// ignore_for_file: prefer_const_constructors

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todoList = [
    ["Fazer prova da facul", false],
    ["Falar com a mamis", false],
    ["Jogar um lol", false],
    ["Terminar umas task do trabalho", false],
  ];

  void apertarCheckBox(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text(
          "TO DO",
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
              nomeTask: todoList[index][0],
              taskCompleta: todoList[index][1],
              onChange: (value) => apertarCheckBox(value, index));
        },
      ),
    );
  }
}

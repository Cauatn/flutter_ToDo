import 'package:flutter/material.dart';
import 'package:flutter_estudo/components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  List toDoList = [
    ["aprendendo flutter", false],
    ["aprendendo flutter 2", true]
  ];

  void checkboxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          centerTitle: true,
          // ignore: prefer_const_constructors
          title: Text(
            'TO DO APP',
          ),
          backgroundColor: Colors.purple,
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (context, index) {
              return TodoTile(
                tarefaNome: toDoList[index][0],
                tarefaValue: toDoList[index][1],
                onChanged: (value) => checkboxChanged(value, index),
              );
            }));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_estudo/components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
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
        body: ListView(
          children: [
            TodoTile(),
          ],
        ));
  }
}

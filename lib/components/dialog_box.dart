import 'package:flutter/material.dart';
import 'package:flutter_estudo/components/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple,
      content: SizedBox(
        height: 120,
        // ignore: prefer_const_constructors
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Adiocione uma nova tarefa",
              ),
            ),
            //buttons -> save + cancel
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Button(
                text: 'salvar',
                onPressed: onSave,
              ),
              const SizedBox(
                width: 8,
              ),
              Button(
                text: 'cancelar',
                onPressed: onCancel,
              )
            ]),
          ],
        ),
      ),
    );
  }
}

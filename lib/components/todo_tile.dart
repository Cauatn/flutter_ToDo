import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String tarefaNome;
  final bool tarefaValue;
  Function(bool?)? onChanged;

  TodoTile({
    super.key,
    required this.tarefaNome,
    required this.tarefaValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Colors.purple, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Checkbox(
              value: tarefaValue,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            Text(tarefaNome),
          ],
        ),
      ),
    );
  }
}

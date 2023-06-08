import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

class TodoTile extends StatelessWidget {
  TodoTile({
    super.key,
    required this.nomeTask,
    required this.taskCompleta,
    required this.onChange,
  });

  final String nomeTask;
  final bool taskCompleta;
  Function(bool?)? onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 230, 0),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            //Checkbox
            Checkbox(
              overlayColor: MaterialStatePropertyAll(Colors.black),
              checkColor: Colors.black,
              fillColor: MaterialStatePropertyAll(Colors.white),
              value: taskCompleta,
              onChanged: onChange
            ),

            //Nome da task
            Text(nomeTask),
          ],
        ),
      ),
    );
  }
}

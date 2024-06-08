import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
        decoration:  const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               const Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.teal),
              ),
              TextField(
                cursorColor: Colors.teal,
                autofocus: true,
                textAlign: TextAlign.center,
                textInputAction: TextInputAction.go,
                onChanged: (value) {
                    newTaskTitle = value;
                  }
                
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: TextButton(
                  onPressed: () {
                     
                Provider.of<TaskData>(context, listen: false).setTaskName(newTaskTitle!);
                Navigator.pop(context);
                  },
                  child: const Text(
                    "Add",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),
                ),
              )
            ],
          ),
        ),
      
    );
  }
}

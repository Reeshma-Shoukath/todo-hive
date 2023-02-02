import 'package:flutter/material.dart';

import 'add.dart';
import 'db.dart';
import 'list.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      appBar: AppBar(title: Text('Todo App'),),
      body: SafeArea(
        child: Column(
          children: [AddStudentWidget(),
             const Expanded(child: ListStudentWidget()),
          ],
        ),
      ),
    );
  }
}

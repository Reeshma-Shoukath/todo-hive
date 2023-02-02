import 'package:flutter/material.dart';

import 'db.dart';
import 'model.dart';

class AddStudentWidget extends StatelessWidget {
  final _titleEditing = TextEditingController();
  final _descriptionEditing = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            controller: _titleEditing,
            decoration: InputDecoration(hintText: 'Title'),
          ),
          TextFormField(
            controller: _descriptionEditing,
            decoration: InputDecoration(hintText: 'Description'),
            maxLines: 6,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                AddButton();
              },
              child: Text('Add'))
        ],
      ),
    );
  }

  Future<void> AddButton() async {
    final _title = _titleEditing.text.trim();
    final _description = _descriptionEditing.text.trim();
    if (_title.isEmpty || _description.isEmpty) {
      return;
    }
    final _student = StudentModel(title: _title, description: _description);
    addStudent(_student);
  }
}

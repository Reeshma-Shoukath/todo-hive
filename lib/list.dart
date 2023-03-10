import 'package:flutter/material.dart';

import 'db.dart';
import 'model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder:(BuildContext context, List<StudentModel>studentList, Widget?child){
        return  ListView.separated(
          itemBuilder: (context, index) {
            final data=studentList[index];
            return ListTile(
                title: Text(data.title),
                subtitle: Text(data.description),
                trailing:IconButton(onPressed: (){
                  if (data.id != null) {
                    deleteStudent(data.id!);
                  } else {
                    print('null');
                  }
                }
                    , icon: Icon(Icons.delete,color: Colors.red,))
            );
          },
          separatorBuilder:(context,index){
            return const Divider();
          }, itemCount: studentList.length,

        );
      } ,

    );}
}

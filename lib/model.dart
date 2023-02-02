import 'package:hive/hive.dart';
part 'model.g.dart';
@HiveType(typeId: 1)


class StudentModel{
  @HiveField(0)
  int? id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  StudentModel({required this.title,required this.description,this.id});
}
import 'package:backend/models/subTaskModel.dart';
import 'package:mongo_dart/mongo_dart.dart';

class TaskModel {
  TaskModel(
      {this.id,
      this.name,
      this.color,
      this.no_of_tasks,
      this.completed,
      this.not_completed,
      this.subtasks});

  TaskModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'] as ObjectId?;
    name = json['name'] as String?;
    color = json['color'] as String?;
    no_of_tasks = json['no_of_tasks'] as int?;
    completed = json['completed'] as int?;
    not_completed = json['not_completed'] as int?;
    subtasks = (json['subtasks'] as List<dynamic>?)
          ?.map((subtaskId) => subtaskId as ObjectId)
          .toList();
  }
  ObjectId? id;
  String? name;
  String? color;
  int? no_of_tasks;
  int? completed;
  int? not_completed;
  List<ObjectId>? subtasks;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['color'] = color;
    data['no_of_tasks'] = no_of_tasks;
    data['completed'] = completed;
    data['not_completed'] = not_completed;
    data['subtasks'] = subtasks;
    return data;
  }
}

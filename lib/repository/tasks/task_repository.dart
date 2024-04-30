import 'package:backend/hash_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'task_repository.g.dart';

@visibleForTesting
/// Data source - in memory cache
Map<String, Task> listDb = {};

@JsonSerializable()

/// This is a Task class
class Task extends Equatable {
  /// Task Constructor Method
  const Task({
    required this.id,
    required this.title,
    this.left,
    this.done,
    this.subtasks,
    this.isLast = false,
  });

  /// Deserialization from json to Task Object
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  /// Task unique identifier
  final String? id;

  /// Task tile
  final String? title;

  /// Number of subtasks remaining
  final num? left;

  /// Number of subtasks done & completed
  final num? done;

  /// Is this Task the last task ? 
  final bool? isLast;

  /// List containing the subtasks in this particular task
  final List<Map<String, dynamic>>? subtasks;

  /// Serialization to Json
  Map<String, dynamic> toJson() => _$TaskToJson(this);

  /// Method to update the Task
  Task copyWith({String? id, String? title}) {
    return Task(id: id ?? this.id, title: title ?? this.title);
  }

  @override
  List<Object?> get props => [id, title];
}

//// Repository class for Task
class TaskRepository {
  //// Get task from the data source given [id]
  Future<Task?> listById(String id) async {
    return listDb[id];
  }

  //// Get all tasks from the data source
  Map<String, dynamic> getAllTasks() {
    final formattedTasks = <String, dynamic>{};

    if (listDb.isNotEmpty) {
      listDb.forEach(
        (key, value) {
          final currentList = listDb[key];
          formattedTasks[key] = currentList?.toJson();
        },
      );
    }

    return formattedTasks;
  }

//// Create a new list with a given [title]
  String createTask({required String title}) {
    //// Dynamically generates the id
    final id = title.hashValue;

    //// Create our new Task object and pass the two parameters
    final task = Task(id: id, title: title);

    //// Add a new tasks object in our data source
    listDb[id] = task;

    return id;
  }

  //// Delete the task object with the given [id]
  void deleteTask(String id) {
    listDb.remove(id);
  }

  //// Update operation
  Future<void> updateTask({required String id, required String title}) async {
    final currentTask = listDb[id];

    if (currentTask == null) {
      return Future.error(Exception('Task Not found!'));
    }

    listDb[id] = Task(id: id, title: title);
  }
}

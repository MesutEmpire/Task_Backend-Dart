import 'dart:io';
import 'package:backend/models/subTaskModel.dart';
import 'package:backend/models/taskModel.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mongo_dart/mongo_dart.dart';

Future<Response> onRequest(
  RequestContext context,
  String id,
) {
  return switch (context.request.method) {
    HttpMethod.get => _getSpecificTask(context, id),
    HttpMethod.post => _addSubTask(context, id),
    HttpMethod.patch => _updateTask(context, id),
    HttpMethod.delete => _deleteTask(context, id),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed))
  };
}

Future<Response> _getSpecificTask(RequestContext context, String id) async {
  try {
    final task = await context
        .read<DbCollection>()
        .findOne(where.id(ObjectId.parse(id)));

    if (task != null && task.isNotEmpty) {
      return Response.json(body: TaskModel.fromJson(task).toJson());
    }
    return Response.json(
        statusCode: HttpStatus.notFound, body: {'message': 'Task not found'});
  } catch (e) {
    return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {'message': 'Failed to fetch', 'error': '$e'});
  }
}

Future<Response> _addSubTask(RequestContext context, String id) async {
  try {
    final body = await context.request.json() as Map<String, dynamic>;
    final data = body['data'] as Map<String, dynamic>;

    final task = await context
        .read<DbCollection>()
        .findOne(where.id(ObjectId.parse(id)));

    if (task != null) {
      final subtask = SubTaskModel(
          name: data['name'] as String?,
          color: data['color'] as String?,
          time_from: DateTime.parse(data['time_from'] as String),
          time_to: DateTime.parse(data['time_to'] as String),
          date: DateTime.parse(data['date'] as String));

      final subtask_result = await context
          .read<Db>()
          .collection('subtasks')
          .insertOne(subtask.toJson()..remove('id'));

      final updatedTask = TaskModel(
          name: task['name'] as String?,
          color: task['color'] as String?,
          no_of_tasks: task['no_of_tasks'] as int?,
          completed: task['completed'] as int?,
          not_completed: task['not_completed'] as int?);

      print('$subtask_result');
      print('$subtask_result.id');

      await context.read<DbCollection>().updateOne(
          where.id(ObjectId.parse(id)),
          modify
              .set('name', updatedTask.name)
              .set('color', updatedTask.color)
              .set('no_of_tasks', updatedTask.no_of_tasks)
              .set('completed', updatedTask.completed)
              .set('not_completed', updatedTask.not_completed)
              .push('subtasks', subtask_result.id));

      return Response.json(
          body: updatedTask.toJson()..['id'] = task['_id'] as ObjectId?);
    }
    return Response.json(
        statusCode: HttpStatus.notFound, body: {'message': 'Task not found'});
  } catch (e) {
    return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {'message': 'Failed to create Subtask', 'error': '$e'});
  }
}

Future<Response> _updateTask(RequestContext context, String id) async {
  try {
    final body = await context.request.json() as Map<String, dynamic>;

    final data = body['data'] as Map<String, dynamic>;

    final task = await context
        .read<DbCollection>()
        .findOne(where.id(ObjectId.parse(id)));

    if (task != null) {
      final updatedTask = TaskModel(
          name: (data['name'] ?? task['name']) as String?,
          color: (data['color'] ?? task['color']) as String?,
          no_of_tasks: (data['no_of_tasks'] ?? task['no_of_tasks']) as int?,
          completed: (data['completed'] ?? task['completed']) as int?,
          not_completed:
              (data['not_completed'] ?? task['not_completed']) as int?);

      await context.read<DbCollection>().updateOne(
          where.id(ObjectId.parse(id)),
          modify
              .set('name', updatedTask.name)
              .set('color', updatedTask.color)
              .set('no_of_tasks', updatedTask.no_of_tasks)
              .set('completed', updatedTask.completed)
              .set('not_completed', updatedTask.not_completed));
      return Response.json(
          body: updatedTask.toJson()..['id'] = task['_id'] as ObjectId?);
    }
    return Response.json(
        statusCode: HttpStatus.notFound, body: {'message': 'Task not found'});
  } catch (e) {
    return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {'message': 'Failed to update', 'error': '$e'});
  }
}

Future<Response> _deleteTask(RequestContext context, String id) async {
  try {
    await context.read<DbCollection>().deleteOne(where.id(ObjectId.parse(id)));

    return Response.json(body: {'message': 'Task Deleted successfully'});
  } catch (e) {
    return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'message': 'Failed to delete Task', 'error': '$e'});
  }
}

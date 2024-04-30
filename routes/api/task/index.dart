import 'dart:io';
import 'package:backend/models/taskModel.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mongo_dart/mongo_dart.dart';

Future<Response> onRequest(RequestContext context) {
  return switch (context.request.method) {
    HttpMethod.get => _getTasks(context),
    HttpMethod.post => _createTask(context),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed))
  };
}

Future<Response> _getTasks(RequestContext context) async {
  final tasks = await context.read<DbCollection>().find().toList();
  return Response.json(body: tasks);
}

Future<Response> _createTask(RequestContext context) async {
  try {
    final body = await context.request.json() as Map<String, dynamic>;
    final data = body['data'] as Map<String, dynamic>;


    final task = TaskModel(
        name: data['name'] as String?,
        color: data['color'] as String?,
        no_of_tasks: data['no_of_tasks'] as int?,
        completed: data['completed'] as int?,
        not_completed: data['not_completed'] as int?);

    final result = await context
        .read<DbCollection>()
        .insertOne(task.toJson()..remove('id'));

    return Response.json(
        body: task.toJson()..['id'] = result.id as ObjectId?);
  } catch (e) {
    return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'message': 'Failed to create product'});
  }
}

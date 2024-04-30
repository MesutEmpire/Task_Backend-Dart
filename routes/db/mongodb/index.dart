import 'dart:io';
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
  final tasks = await context.read<Db>().collection('tasks').find().toList();
  return Response.json(body: tasks);
}

Future<Response> _createTask(RequestContext context) async {
  final body = await context.request.json() as Map<String, dynamic>;
  final title = body['title'] as String;

  final task = <String, dynamic>{'title': title};

  final result = await context.read<Db>().collection('tasks').insertOne(task);

  return Response.json(body: {'id': result.id});
}

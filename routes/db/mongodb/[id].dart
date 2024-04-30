import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mongo_dart/mongo_dart.dart';

Future<Response> onRequest(
  RequestContext context,
  String id,
) {
  return switch (context.request.method) {
    HttpMethod.get => _getSpecificTask(context, id),
    HttpMethod.patch => _updateTask(context, id),
    HttpMethod.delete => _deleteTask(context, id),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed))
  };
}

Future<Response> _getSpecificTask(RequestContext context, String id) async {
  final tasks = await context
      .read<Db>()
      .collection('tasks')
      .findOne(where.id(ObjectId.parse(id)));
  return Response.json(body: tasks.toString());
}

Future<Response> _updateTask(RequestContext context, String id) async {
  final body = await context.request.json() as Map<String, dynamic>;

  final title = body['title'] as String;

  try {
    await context
        .read<Db>()
        .collection('tasks')
        .updateOne(where.id(ObjectId.parse(id)), modify.set('title', title));
    return Response(statusCode: HttpStatus.noContent);
  } catch (e) {
    return Response(statusCode: HttpStatus.badRequest);
  }
}

Future<Response> _deleteTask(RequestContext context, String id) async {
  try {
    await context
        .read<Db>()
        .collection('tasks')
        .deleteOne(where.id(ObjectId.parse(id)));

    return Response(statusCode: HttpStatus.noContent);
  } catch (e) {
    return Response(statusCode: HttpStatus.badRequest);
  }
}

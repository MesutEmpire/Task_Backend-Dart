import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:firedart/firestore/firestore.dart';

Future<Response> onRequest(
  RequestContext context,
  String id,
) {
  return switch (context.request.method) {
    HttpMethod.patch => _updateTask(context, id),
    HttpMethod.delete => _deleteTask(context, id),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed))
  };
}

Future<Response> _updateTask(RequestContext context, String id) async {
  final body = await context.request.json() as Map<String, dynamic>;
  final title = body['title'] as String;

  await Firestore.instance
      .collection('tasks')
      .document(id)
      .update({'title': title});

  return Response(statusCode: HttpStatus.noContent);
}

Future<Response> _deleteTask(RequestContext context, String id) async {
  await Firestore.instance.collection('tasks').document(id).delete().then(
        (value) => Response(statusCode: HttpStatus.noContent),
        onError: (e) => Response(statusCode: HttpStatus.badRequest),
      );
  return Response(statusCode: HttpStatus.badRequest);
}

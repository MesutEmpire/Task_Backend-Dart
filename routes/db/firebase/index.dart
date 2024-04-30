import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:firedart/firestore/firestore.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => _getTasks(context),
    HttpMethod.post => _createTask(context),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed))
  };
}

Future<Response> _getTasks(RequestContext context) async {
  final tasks = <Map<String, dynamic>>[];

  await Firestore.instance.collection('tasks').get().then((event) => {
        for (final doc in event) {tasks.add(doc.map)}
      });

  return Response.json(body: tasks);
}

Future<Response> _createTask(RequestContext context) async {
  final body = await context.request.json();
  final title = body['title'] as String;

  final task = <String, dynamic>{'title': title};

  final id = await Firestore.instance
      .collection('tasks')
      .add(task)
      .then((doc) => doc.id);
  return Response.json(body: {'id': id});
}

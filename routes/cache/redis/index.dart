import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:redis/redis.dart';

Future<Response> onRequest(RequestContext context) {
  return switch (context.request.method) {
    HttpMethod.get => _getLoginStatus(context),
    HttpMethod.post => _setLoginStatus(context),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed))
  };
}

Future<Response> _getLoginStatus(RequestContext context) async {
  try {
    final value =
        await context.read<Command>().send_object(['GET', 'loggedIn']);
    if (value == null) {
      const status = 0;
      await context.read<Command>().send_object(['SET', 'loggedIn', status]);
      return Response(statusCode: HttpStatus.noContent);
    }
    return Response.json(body: value.toString());
  } catch (e) {
    return Response(statusCode: HttpStatus.badRequest);
  }
}

Future<Response> _setLoginStatus(RequestContext context) async {
  final body = await context.request.json() as Map<String, dynamic>;
  final status = body['loggedIn'] as int;

  var success = false;
  try {
    await context.read<Command>().send_object(['SET', 'loggedIn', status]);
    success = true;
  } catch (e) {
    success = false;
  } 
    return Response.json(body: {'success': success});

}

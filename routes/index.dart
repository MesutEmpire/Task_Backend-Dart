import 'dart:io';

import 'package:backend/src/generated/prisma_client/client.dart';
import 'package:backend/src/generated/prisma_client/prisma.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:orm/orm.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => _getUsers(context),
    HttpMethod.post => _createUser(context),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed))
  };
}

Future<Response> _getUsers(RequestContext context) async {
  try {
    final users = await context.read<UserDelegate>().findMany();

    if (users != null) {
      return Response.json(body: users);
    }
    return Response.json(
        statusCode: HttpStatus.notFound, body: {'message': 'Users not found'});
  } catch (e) {
    print(e.toString());
    return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'message': 'Failed to fetch users'});
  }
}

Future<Response> _createUser(RequestContext context) async {
  try {
    final body = await context.request.json() as Map<String, dynamic>;
    final data = body['data'] as Map<String, dynamic>;

    final user = await context.read<UserDelegate>().create(
          data: PrismaUnion.$1(UserCreateInput(
            email: data['email'] as String,
            name: PrismaUnion.$1(data['name'] as String),
          )),
        );
    return Response.json(body: user);
  } catch (e) {
    return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'message': 'Failed to create product'});
  }
}

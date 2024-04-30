import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mongo_dart/mongo_dart.dart';

class DatabaseService {
  static final db = Db('');

  static Future<void> startDB() async {
    if (!db.isConnected) {
      await db.open();
    }
  }

  static Future<void> closeDB() async {
    if (db.isConnected) {
      await db.close();
    }
  }

  ///Collections
  static final taskCollections = db.collection('tasks');

  static Future<Response> startConnection(
      RequestContext context, Future<Response> callback) async {
    try {
      await startDB();
      return await callback;
    } catch (e) {
      return Response.json(
          statusCode: HttpStatus.internalServerError,
          body: {'message': 'Internal Server Error'});
    }
  }
}

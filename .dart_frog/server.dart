// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, implicit_dynamic_list_literal

import 'dart:io';

import 'package:dart_frog/dart_frog.dart';


import '../routes/index.dart' as index;
import '../routes/tasks/index.dart' as tasks_index;
import '../routes/db/mongodb/index.dart' as db_mongodb_index;
import '../routes/db/mongodb/[id].dart' as db_mongodb_$id;
import '../routes/db/firebase/index.dart' as db_firebase_index;
import '../routes/db/firebase/[id].dart' as db_firebase_$id;
import '../routes/cache/redis/index.dart' as cache_redis_index;
import '../routes/api/task/index.dart' as api_task_index;
import '../routes/api/task/[id].dart' as api_task_$id;

import '../routes/_middleware.dart' as middleware;
import '../routes/db/mongodb/_middleware.dart' as db_mongodb_middleware;
import '../routes/db/firebase/_middleware.dart' as db_firebase_middleware;
import '../routes/cache/redis/_middleware.dart' as cache_redis_middleware;
import '../routes/api/task/_middleware.dart' as api_task_middleware;

void main() async {
  final address = InternetAddress.tryParse('') ?? InternetAddress.anyIPv6;
  final port = int.tryParse(Platform.environment['PORT'] ?? '8080') ?? 8080;
  hotReload(() => createServer(address, port));
}

Future<HttpServer> createServer(InternetAddress address, int port) {
  final handler = Cascade().add(buildRootHandler()).handler;
  return serve(handler, address, port);
}

Handler buildRootHandler() {
  final pipeline = const Pipeline().addMiddleware(middleware.middleware);
  final router = Router()
    ..mount('/api/task', (context) => buildApiTaskHandler()(context))
    ..mount('/cache/redis', (context) => buildCacheRedisHandler()(context))
    ..mount('/db/firebase', (context) => buildDbFirebaseHandler()(context))
    ..mount('/db/mongodb', (context) => buildDbMongodbHandler()(context))
    ..mount('/tasks', (context) => buildTasksHandler()(context))
    ..mount('/', (context) => buildHandler()(context));
  return pipeline.addHandler(router);
}

Handler buildApiTaskHandler() {
  final pipeline = const Pipeline().addMiddleware(api_task_middleware.middleware);
  final router = Router()
    ..all('/', (context) => api_task_index.onRequest(context,))..all('/<id>', (context,id,) => api_task_$id.onRequest(context,id,));
  return pipeline.addHandler(router);
}

Handler buildCacheRedisHandler() {
  final pipeline = const Pipeline().addMiddleware(cache_redis_middleware.middleware);
  final router = Router()
    ..all('/', (context) => cache_redis_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildDbFirebaseHandler() {
  final pipeline = const Pipeline().addMiddleware(db_firebase_middleware.middleware);
  final router = Router()
    ..all('/', (context) => db_firebase_index.onRequest(context,))..all('/<id>', (context,id,) => db_firebase_$id.onRequest(context,id,));
  return pipeline.addHandler(router);
}

Handler buildDbMongodbHandler() {
  final pipeline = const Pipeline().addMiddleware(db_mongodb_middleware.middleware);
  final router = Router()
    ..all('/', (context) => db_mongodb_index.onRequest(context,))..all('/<id>', (context,id,) => db_mongodb_$id.onRequest(context,id,));
  return pipeline.addHandler(router);
}

Handler buildTasksHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => tasks_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => index.onRequest(context,));
  return pipeline.addHandler(router);
}


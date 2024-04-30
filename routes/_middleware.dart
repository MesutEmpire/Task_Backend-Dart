import 'package:backend/repository/tasks/task_repository.dart';
import 'package:backend/src/generated/prisma_client/client.dart';
import 'package:backend/src/generated/prisma_client/model.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;

final prisma = PrismaClient();

Handler middleware(Handler handler) {
  return (context) async {
    final response = await handler
        .use(requestLogger())
        .use(provider<TaskRepository>((context) => TaskRepository()))
        .use(provider<UserDelegate>((context) => prisma.user))
        .use(
          fromShelfMiddleware(
            shelf.corsHeaders(
              headers: {
                shelf.ACCESS_CONTROL_ALLOW_ORIGIN: '*',
              },
            ),
          ),
        )
        .use(
      provider<DotEnv>(
        (context) {
          final env = DotEnv(includePlatformEnvironment: true)..load();
          return env;
        },
      ),
    ).call(context);

    await prisma.$disconnect();

    return response;
  };
}

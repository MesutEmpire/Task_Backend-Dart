import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:redis/redis.dart';

final connection = RedisConnection();

Handler middleware(Handler handler) {
  return (context) async {
    final redisHost = context.read<DotEnv>()['REDIS_HOST'] ?? '';
    final redisPort = context.read<DotEnv>()['REDIS_PORT'] ?? '';

    Response response;

    try {
      final command = await connection.connect(redisHost, redisPort);

      await command.send_object(['AUTH', 'default', '123456']);

      response =
          await handler.use(provider<Command>((_) => command)).call(context);
    } catch (e) {
      response =
          Response.json(body: {'success': false, 'message': e.toString()});
    }

    return response;
  };
}
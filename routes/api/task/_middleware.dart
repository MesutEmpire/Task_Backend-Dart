import 'package:backend/models/subTaskModel.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:mongo_dart/mongo_dart.dart';

Handler middleware(Handler handler) {
  return (context) async {
    final mongoDBUrl = context.read<DotEnv>()['MONGDB_URL'] ?? '';
    final db = await Db.create(mongoDBUrl);

    if (!db.isConnected) {
      await db.open();
    }

    final response = await handler
        .use(provider<DbCollection>((_) => db.collection('tasks')))
        .use(provider<Db>((_) => db))
        .call(context);

    await db.close();

    return response;
  };
}

import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:firedart/firestore/firestore.dart';

Handler middleware(Handler handler) {
  return (context) async {
    final firebaseID = context.read<DotEnv>()['FIREBASE_ID'] ?? '';

    if (!Firestore.initialized) {
      Firestore.initialize(firebaseID);
    }

    final response = await handler(context);

    return response;
  };
}
import 'package:equatable/equatable.dart';

class Environment extends Equatable {
  const Environment(
      {this.mongoDBUrl,
      this.firebaseProjectId,
      this.redisHost,
      this.redisPort});

  final String? mongoDBUrl;
  final String? firebaseProjectId;
  final String? redisHost;
  final String? redisPort;



  @override
  List<Object?> get props => [mongoDBUrl,firebaseProjectId,redisHost,redisPort];
}

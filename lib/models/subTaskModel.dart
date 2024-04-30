import 'package:mongo_dart/mongo_dart.dart';

class SubTaskModel {
  SubTaskModel({
    this.id,
    this.name,
    this.color,
    this.time_from,
    this.time_to,
    this.date,
  });

  SubTaskModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'] as ObjectId?;
    name = json['name'] as String?;
    color = json['color'] as String?;
    time_from = json['time_from'] as DateTime?;
    time_to = json['time_to'] as DateTime?;
    date = json['date'] as DateTime?;
  }
  ObjectId? id;
  String? name;
  String? color;
  DateTime? time_from;
  DateTime? time_to;
  DateTime? date;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['color'] = color;
    data['time_from'] = time_from;
    data['time_to'] = time_to;
    data['date'] = date;
    return data;
  }
}

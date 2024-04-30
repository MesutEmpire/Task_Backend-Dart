// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;

enum Role implements _i1.PrismaEnum {
  user._('USER'),
  admin._('ADMIN');

  const Role._(this.name);

  @override
  final String name;
}

class User {
  const User({
    this.id,
    this.email,
    this.name,
    this.role,
  });

  factory User.fromJson(Map json) => User(
        id: json['id'],
        email: json['email'],
        name: json['name'],
        role: json['role'] != null
            ? _i2.Role.values.firstWhere((e) => e.name == json['role'])
            : null,
      );

  final String? id;

  final String? email;

  final String? name;

  final _i2.Role? role;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class Task {
  const Task({
    this.id,
    this.name,
  });

  factory Task.fromJson(Map json) => Task(
        id: json['id'],
        name: json['name'],
      );

  final String? id;

  final String? name;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

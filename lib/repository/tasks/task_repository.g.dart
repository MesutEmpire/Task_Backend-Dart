// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      id: json['id'] as String?,
      title: json['title'] as String?,
      left: json['left'] as num?,
      done: json['done'] as num?,
      subtasks: (json['subtasks'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      isLast: json['isLast'] as bool? ?? false,
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'left': instance.left,
      'done': instance.done,
      'isLast': instance.isLast,
      'subtasks': instance.subtasks,
    };

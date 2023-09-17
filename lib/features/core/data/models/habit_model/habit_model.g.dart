// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HabitModel _$$_HabitModelFromJson(Map<String, dynamic> json) =>
    _$_HabitModel(
      uuid: json['uuid'] as String,
      isCompleted: json['isCompleted'] as bool,
      isLocked: json['isLocked'] as bool,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_HabitModelToJson(_$_HabitModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'isCompleted': instance.isCompleted,
      'isLocked': instance.isLocked,
      'text': instance.text,
      'createdAt': instance.createdAt.toIso8601String(),
    };

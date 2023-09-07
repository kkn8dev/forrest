// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HabitModel _$$_HabitModelFromJson(Map<String, dynamic> json) =>
    _$_HabitModel(
      isCompleted: json['isCompleted'] as bool,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_HabitModelToJson(_$_HabitModel instance) =>
    <String, dynamic>{
      'isCompleted': instance.isCompleted,
      'text': instance.text,
      'createdAt': instance.createdAt.toIso8601String(),
    };

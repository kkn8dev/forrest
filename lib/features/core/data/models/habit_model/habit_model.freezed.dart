// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HabitModel _$HabitModelFromJson(Map<String, dynamic> json) {
  return _HabitModel.fromJson(json);
}

/// @nodoc
mixin _$HabitModel {
  String get uuid => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabitModelCopyWith<HabitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitModelCopyWith<$Res> {
  factory $HabitModelCopyWith(
          HabitModel value, $Res Function(HabitModel) then) =
      _$HabitModelCopyWithImpl<$Res, HabitModel>;
  @useResult
  $Res call({String uuid, bool isCompleted, String text, DateTime createdAt});
}

/// @nodoc
class _$HabitModelCopyWithImpl<$Res, $Val extends HabitModel>
    implements $HabitModelCopyWith<$Res> {
  _$HabitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? isCompleted = null,
    Object? text = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HabitModelCopyWith<$Res>
    implements $HabitModelCopyWith<$Res> {
  factory _$$_HabitModelCopyWith(
          _$_HabitModel value, $Res Function(_$_HabitModel) then) =
      __$$_HabitModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, bool isCompleted, String text, DateTime createdAt});
}

/// @nodoc
class __$$_HabitModelCopyWithImpl<$Res>
    extends _$HabitModelCopyWithImpl<$Res, _$_HabitModel>
    implements _$$_HabitModelCopyWith<$Res> {
  __$$_HabitModelCopyWithImpl(
      _$_HabitModel _value, $Res Function(_$_HabitModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? isCompleted = null,
    Object? text = null,
    Object? createdAt = null,
  }) {
    return _then(_$_HabitModel(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HabitModel implements _HabitModel {
  const _$_HabitModel(
      {required this.uuid,
      required this.isCompleted,
      required this.text,
      required this.createdAt});

  factory _$_HabitModel.fromJson(Map<String, dynamic> json) =>
      _$$_HabitModelFromJson(json);

  @override
  final String uuid;
  @override
  final bool isCompleted;
  @override
  final String text;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'HabitModel(uuid: $uuid, isCompleted: $isCompleted, text: $text, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HabitModel &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uuid, isCompleted, text, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HabitModelCopyWith<_$_HabitModel> get copyWith =>
      __$$_HabitModelCopyWithImpl<_$_HabitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HabitModelToJson(
      this,
    );
  }
}

abstract class _HabitModel implements HabitModel {
  const factory _HabitModel(
      {required final String uuid,
      required final bool isCompleted,
      required final String text,
      required final DateTime createdAt}) = _$_HabitModel;

  factory _HabitModel.fromJson(Map<String, dynamic> json) =
      _$_HabitModel.fromJson;

  @override
  String get uuid;
  @override
  bool get isCompleted;
  @override
  String get text;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_HabitModelCopyWith<_$_HabitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

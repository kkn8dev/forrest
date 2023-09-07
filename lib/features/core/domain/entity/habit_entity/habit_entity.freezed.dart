// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HabitEntity {
  bool get isCompleted => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitEntityCopyWith<HabitEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitEntityCopyWith<$Res> {
  factory $HabitEntityCopyWith(
          HabitEntity value, $Res Function(HabitEntity) then) =
      _$HabitEntityCopyWithImpl<$Res, HabitEntity>;
  @useResult
  $Res call({bool isCompleted, String text, int year, int month, int day});
}

/// @nodoc
class _$HabitEntityCopyWithImpl<$Res, $Val extends HabitEntity>
    implements $HabitEntityCopyWith<$Res> {
  _$HabitEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompleted = null,
    Object? text = null,
    Object? year = null,
    Object? month = null,
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HabitEntityCopyWith<$Res>
    implements $HabitEntityCopyWith<$Res> {
  factory _$$_HabitEntityCopyWith(
          _$_HabitEntity value, $Res Function(_$_HabitEntity) then) =
      __$$_HabitEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCompleted, String text, int year, int month, int day});
}

/// @nodoc
class __$$_HabitEntityCopyWithImpl<$Res>
    extends _$HabitEntityCopyWithImpl<$Res, _$_HabitEntity>
    implements _$$_HabitEntityCopyWith<$Res> {
  __$$_HabitEntityCopyWithImpl(
      _$_HabitEntity _value, $Res Function(_$_HabitEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompleted = null,
    Object? text = null,
    Object? year = null,
    Object? month = null,
    Object? day = null,
  }) {
    return _then(_$_HabitEntity(
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HabitEntity implements _HabitEntity {
  const _$_HabitEntity(
      {required this.isCompleted,
      required this.text,
      required this.year,
      required this.month,
      required this.day});

  @override
  final bool isCompleted;
  @override
  final String text;
  @override
  final int year;
  @override
  final int month;
  @override
  final int day;

  @override
  String toString() {
    return 'HabitEntity(isCompleted: $isCompleted, text: $text, year: $year, month: $month, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HabitEntity &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isCompleted, text, year, month, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HabitEntityCopyWith<_$_HabitEntity> get copyWith =>
      __$$_HabitEntityCopyWithImpl<_$_HabitEntity>(this, _$identity);
}

abstract class _HabitEntity implements HabitEntity {
  const factory _HabitEntity(
      {required final bool isCompleted,
      required final String text,
      required final int year,
      required final int month,
      required final int day}) = _$_HabitEntity;

  @override
  bool get isCompleted;
  @override
  String get text;
  @override
  int get year;
  @override
  int get month;
  @override
  int get day;
  @override
  @JsonKey(ignore: true)
  _$$_HabitEntityCopyWith<_$_HabitEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

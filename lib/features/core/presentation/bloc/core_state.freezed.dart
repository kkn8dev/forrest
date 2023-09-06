// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoreState {
  String? get id => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  Failure? get unknownError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoreStateCopyWith<CoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreStateCopyWith<$Res> {
  factory $CoreStateCopyWith(CoreState value, $Res Function(CoreState) then) =
      _$CoreStateCopyWithImpl<$Res, CoreState>;
  @useResult
  $Res call({String? id, String? locale, Failure? unknownError});
}

/// @nodoc
class _$CoreStateCopyWithImpl<$Res, $Val extends CoreState>
    implements $CoreStateCopyWith<$Res> {
  _$CoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? locale = freezed,
    Object? unknownError = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      unknownError: freezed == unknownError
          ? _value.unknownError
          : unknownError // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoreStateCopyWith<$Res> implements $CoreStateCopyWith<$Res> {
  factory _$$_CoreStateCopyWith(
          _$_CoreState value, $Res Function(_$_CoreState) then) =
      __$$_CoreStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? locale, Failure? unknownError});
}

/// @nodoc
class __$$_CoreStateCopyWithImpl<$Res>
    extends _$CoreStateCopyWithImpl<$Res, _$_CoreState>
    implements _$$_CoreStateCopyWith<$Res> {
  __$$_CoreStateCopyWithImpl(
      _$_CoreState _value, $Res Function(_$_CoreState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? locale = freezed,
    Object? unknownError = freezed,
  }) {
    return _then(_$_CoreState(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == unknownError
          ? _value.unknownError
          : unknownError // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_CoreState implements _CoreState {
  _$_CoreState([this.id, this.locale, this.unknownError]);

  @override
  final String? id;
  @override
  final String? locale;
  @override
  final Failure? unknownError;

  @override
  String toString() {
    return 'CoreState(id: $id, locale: $locale, unknownError: $unknownError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoreState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.unknownError, unknownError) ||
                other.unknownError == unknownError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, locale, unknownError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoreStateCopyWith<_$_CoreState> get copyWith =>
      __$$_CoreStateCopyWithImpl<_$_CoreState>(this, _$identity);
}

abstract class _CoreState implements CoreState {
  factory _CoreState(
      [final String? id,
      final String? locale,
      final Failure? unknownError]) = _$_CoreState;

  @override
  String? get id;
  @override
  String? get locale;
  @override
  Failure? get unknownError;
  @override
  @JsonKey(ignore: true)
  _$$_CoreStateCopyWith<_$_CoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TemplateEntity {
  String? get field => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TemplateEntityCopyWith<TemplateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateEntityCopyWith<$Res> {
  factory $TemplateEntityCopyWith(
          TemplateEntity value, $Res Function(TemplateEntity) then) =
      _$TemplateEntityCopyWithImpl<$Res, TemplateEntity>;
  @useResult
  $Res call({String? field});
}

/// @nodoc
class _$TemplateEntityCopyWithImpl<$Res, $Val extends TemplateEntity>
    implements $TemplateEntityCopyWith<$Res> {
  _$TemplateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_value.copyWith(
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TemplateEntityCopyWith<$Res>
    implements $TemplateEntityCopyWith<$Res> {
  factory _$$_TemplateEntityCopyWith(
          _$_TemplateEntity value, $Res Function(_$_TemplateEntity) then) =
      __$$_TemplateEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? field});
}

/// @nodoc
class __$$_TemplateEntityCopyWithImpl<$Res>
    extends _$TemplateEntityCopyWithImpl<$Res, _$_TemplateEntity>
    implements _$$_TemplateEntityCopyWith<$Res> {
  __$$_TemplateEntityCopyWithImpl(
      _$_TemplateEntity _value, $Res Function(_$_TemplateEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_$_TemplateEntity(
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TemplateEntity implements _TemplateEntity {
  const _$_TemplateEntity({this.field});

  @override
  final String? field;

  @override
  String toString() {
    return 'TemplateEntity(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TemplateEntity &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TemplateEntityCopyWith<_$_TemplateEntity> get copyWith =>
      __$$_TemplateEntityCopyWithImpl<_$_TemplateEntity>(this, _$identity);
}

abstract class _TemplateEntity implements TemplateEntity {
  const factory _TemplateEntity({final String? field}) = _$_TemplateEntity;

  @override
  String? get field;
  @override
  @JsonKey(ignore: true)
  _$$_TemplateEntityCopyWith<_$_TemplateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

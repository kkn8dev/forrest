// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionCategoryEntity {
  String get uuid => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionCategoryEntityCopyWith<TransactionCategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCategoryEntityCopyWith<$Res> {
  factory $TransactionCategoryEntityCopyWith(TransactionCategoryEntity value,
          $Res Function(TransactionCategoryEntity) then) =
      _$TransactionCategoryEntityCopyWithImpl<$Res, TransactionCategoryEntity>;
  @useResult
  $Res call({String uuid, Color color, String label});
}

/// @nodoc
class _$TransactionCategoryEntityCopyWithImpl<$Res,
        $Val extends TransactionCategoryEntity>
    implements $TransactionCategoryEntityCopyWith<$Res> {
  _$TransactionCategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? color = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionCategoryEntityCopyWith<$Res>
    implements $TransactionCategoryEntityCopyWith<$Res> {
  factory _$$_TransactionCategoryEntityCopyWith(
          _$_TransactionCategoryEntity value,
          $Res Function(_$_TransactionCategoryEntity) then) =
      __$$_TransactionCategoryEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, Color color, String label});
}

/// @nodoc
class __$$_TransactionCategoryEntityCopyWithImpl<$Res>
    extends _$TransactionCategoryEntityCopyWithImpl<$Res,
        _$_TransactionCategoryEntity>
    implements _$$_TransactionCategoryEntityCopyWith<$Res> {
  __$$_TransactionCategoryEntityCopyWithImpl(
      _$_TransactionCategoryEntity _value,
      $Res Function(_$_TransactionCategoryEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? color = null,
    Object? label = null,
  }) {
    return _then(_$_TransactionCategoryEntity(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TransactionCategoryEntity extends _TransactionCategoryEntity {
  const _$_TransactionCategoryEntity(
      {required this.uuid, required this.color, required this.label})
      : super._();

  @override
  final String uuid;
  @override
  final Color color;
  @override
  final String label;

  @override
  String toString() {
    return 'TransactionCategoryEntity(uuid: $uuid, color: $color, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionCategoryEntity &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, color, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCategoryEntityCopyWith<_$_TransactionCategoryEntity>
      get copyWith => __$$_TransactionCategoryEntityCopyWithImpl<
          _$_TransactionCategoryEntity>(this, _$identity);
}

abstract class _TransactionCategoryEntity extends TransactionCategoryEntity {
  const factory _TransactionCategoryEntity(
      {required final String uuid,
      required final Color color,
      required final String label}) = _$_TransactionCategoryEntity;
  const _TransactionCategoryEntity._() : super._();

  @override
  String get uuid;
  @override
  Color get color;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCategoryEntityCopyWith<_$_TransactionCategoryEntity>
      get copyWith => throw _privateConstructorUsedError;
}

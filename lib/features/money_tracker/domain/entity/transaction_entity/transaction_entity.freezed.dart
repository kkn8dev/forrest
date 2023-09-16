// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEntity {
  String get uuid => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  TransactionType get transactionType => throw _privateConstructorUsedError;
  TransactionCategoryEntity? get category => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionEntityCopyWith<TransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEntityCopyWith<$Res> {
  factory $TransactionEntityCopyWith(
          TransactionEntity value, $Res Function(TransactionEntity) then) =
      _$TransactionEntityCopyWithImpl<$Res, TransactionEntity>;
  @useResult
  $Res call(
      {String uuid,
      int amount,
      String text,
      String description,
      String source,
      TransactionType transactionType,
      TransactionCategoryEntity? category,
      int year,
      int month,
      int day});

  $TransactionCategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class _$TransactionEntityCopyWithImpl<$Res, $Val extends TransactionEntity>
    implements $TransactionEntityCopyWith<$Res> {
  _$TransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? amount = null,
    Object? text = null,
    Object? description = null,
    Object? source = null,
    Object? transactionType = null,
    Object? category = freezed,
    Object? year = null,
    Object? month = null,
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TransactionCategoryEntity?,
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

  @override
  @pragma('vm:prefer-inline')
  $TransactionCategoryEntityCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $TransactionCategoryEntityCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionEntityCopyWith<$Res>
    implements $TransactionEntityCopyWith<$Res> {
  factory _$$_TransactionEntityCopyWith(_$_TransactionEntity value,
          $Res Function(_$_TransactionEntity) then) =
      __$$_TransactionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      int amount,
      String text,
      String description,
      String source,
      TransactionType transactionType,
      TransactionCategoryEntity? category,
      int year,
      int month,
      int day});

  @override
  $TransactionCategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_TransactionEntityCopyWithImpl<$Res>
    extends _$TransactionEntityCopyWithImpl<$Res, _$_TransactionEntity>
    implements _$$_TransactionEntityCopyWith<$Res> {
  __$$_TransactionEntityCopyWithImpl(
      _$_TransactionEntity _value, $Res Function(_$_TransactionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? amount = null,
    Object? text = null,
    Object? description = null,
    Object? source = null,
    Object? transactionType = null,
    Object? category = freezed,
    Object? year = null,
    Object? month = null,
    Object? day = null,
  }) {
    return _then(_$_TransactionEntity(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TransactionCategoryEntity?,
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

class _$_TransactionEntity extends _TransactionEntity {
  const _$_TransactionEntity(
      {required this.uuid,
      required this.amount,
      required this.text,
      required this.description,
      required this.source,
      required this.transactionType,
      this.category,
      required this.year,
      required this.month,
      required this.day})
      : super._();

  @override
  final String uuid;
  @override
  final int amount;
  @override
  final String text;
  @override
  final String description;
  @override
  final String source;
  @override
  final TransactionType transactionType;
  @override
  final TransactionCategoryEntity? category;
  @override
  final int year;
  @override
  final int month;
  @override
  final int day;

  @override
  String toString() {
    return 'TransactionEntity(uuid: $uuid, amount: $amount, text: $text, description: $description, source: $source, transactionType: $transactionType, category: $category, year: $year, month: $month, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionEntity &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, amount, text, description,
      source, transactionType, category, year, month, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionEntityCopyWith<_$_TransactionEntity> get copyWith =>
      __$$_TransactionEntityCopyWithImpl<_$_TransactionEntity>(
          this, _$identity);
}

abstract class _TransactionEntity extends TransactionEntity {
  const factory _TransactionEntity(
      {required final String uuid,
      required final int amount,
      required final String text,
      required final String description,
      required final String source,
      required final TransactionType transactionType,
      final TransactionCategoryEntity? category,
      required final int year,
      required final int month,
      required final int day}) = _$_TransactionEntity;
  const _TransactionEntity._() : super._();

  @override
  String get uuid;
  @override
  int get amount;
  @override
  String get text;
  @override
  String get description;
  @override
  String get source;
  @override
  TransactionType get transactionType;
  @override
  TransactionCategoryEntity? get category;
  @override
  int get year;
  @override
  int get month;
  @override
  int get day;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionEntityCopyWith<_$_TransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

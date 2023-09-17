// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionCategoryModel _$TransactionCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _TransactionCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionCategoryModel {
  String get uuid => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCategoryModelCopyWith<TransactionCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCategoryModelCopyWith<$Res> {
  factory $TransactionCategoryModelCopyWith(TransactionCategoryModel value,
          $Res Function(TransactionCategoryModel) then) =
      _$TransactionCategoryModelCopyWithImpl<$Res, TransactionCategoryModel>;
  @useResult
  $Res call({String uuid, String color, String label});
}

/// @nodoc
class _$TransactionCategoryModelCopyWithImpl<$Res,
        $Val extends TransactionCategoryModel>
    implements $TransactionCategoryModelCopyWith<$Res> {
  _$TransactionCategoryModelCopyWithImpl(this._value, this._then);

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
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionCategoryModelCopyWith<$Res>
    implements $TransactionCategoryModelCopyWith<$Res> {
  factory _$$_TransactionCategoryModelCopyWith(
          _$_TransactionCategoryModel value,
          $Res Function(_$_TransactionCategoryModel) then) =
      __$$_TransactionCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String color, String label});
}

/// @nodoc
class __$$_TransactionCategoryModelCopyWithImpl<$Res>
    extends _$TransactionCategoryModelCopyWithImpl<$Res,
        _$_TransactionCategoryModel>
    implements _$$_TransactionCategoryModelCopyWith<$Res> {
  __$$_TransactionCategoryModelCopyWithImpl(_$_TransactionCategoryModel _value,
      $Res Function(_$_TransactionCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? color = null,
    Object? label = null,
  }) {
    return _then(_$_TransactionCategoryModel(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionCategoryModel implements _TransactionCategoryModel {
  const _$_TransactionCategoryModel(
      {required this.uuid, required this.color, required this.label});

  factory _$_TransactionCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionCategoryModelFromJson(json);

  @override
  final String uuid;
  @override
  final String color;
  @override
  final String label;

  @override
  String toString() {
    return 'TransactionCategoryModel(uuid: $uuid, color: $color, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionCategoryModel &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, color, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCategoryModelCopyWith<_$_TransactionCategoryModel>
      get copyWith => __$$_TransactionCategoryModelCopyWithImpl<
          _$_TransactionCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionCategoryModelToJson(
      this,
    );
  }
}

abstract class _TransactionCategoryModel implements TransactionCategoryModel {
  const factory _TransactionCategoryModel(
      {required final String uuid,
      required final String color,
      required final String label}) = _$_TransactionCategoryModel;

  factory _TransactionCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionCategoryModel.fromJson;

  @override
  String get uuid;
  @override
  String get color;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCategoryModelCopyWith<_$_TransactionCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

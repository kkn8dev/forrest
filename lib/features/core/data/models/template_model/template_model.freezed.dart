// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TemplateModel _$TemplateModelFromJson(Map<String, dynamic> json) {
  return _TemplateModel.fromJson(json);
}

/// @nodoc
mixin _$TemplateModel {
  String? get field => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateModelCopyWith<TemplateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateModelCopyWith<$Res> {
  factory $TemplateModelCopyWith(
          TemplateModel value, $Res Function(TemplateModel) then) =
      _$TemplateModelCopyWithImpl<$Res, TemplateModel>;
  @useResult
  $Res call({String? field});
}

/// @nodoc
class _$TemplateModelCopyWithImpl<$Res, $Val extends TemplateModel>
    implements $TemplateModelCopyWith<$Res> {
  _$TemplateModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_TemplateModelCopyWith<$Res>
    implements $TemplateModelCopyWith<$Res> {
  factory _$$_TemplateModelCopyWith(
          _$_TemplateModel value, $Res Function(_$_TemplateModel) then) =
      __$$_TemplateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? field});
}

/// @nodoc
class __$$_TemplateModelCopyWithImpl<$Res>
    extends _$TemplateModelCopyWithImpl<$Res, _$_TemplateModel>
    implements _$$_TemplateModelCopyWith<$Res> {
  __$$_TemplateModelCopyWithImpl(
      _$_TemplateModel _value, $Res Function(_$_TemplateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_$_TemplateModel(
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TemplateModel implements _TemplateModel {
  const _$_TemplateModel({this.field});

  factory _$_TemplateModel.fromJson(Map<String, dynamic> json) =>
      _$$_TemplateModelFromJson(json);

  @override
  final String? field;

  @override
  String toString() {
    return 'TemplateModel(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TemplateModel &&
            (identical(other.field, field) || other.field == field));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TemplateModelCopyWith<_$_TemplateModel> get copyWith =>
      __$$_TemplateModelCopyWithImpl<_$_TemplateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemplateModelToJson(
      this,
    );
  }
}

abstract class _TemplateModel implements TemplateModel {
  const factory _TemplateModel({final String? field}) = _$_TemplateModel;

  factory _TemplateModel.fromJson(Map<String, dynamic> json) =
      _$_TemplateModel.fromJson;

  @override
  String? get field;
  @override
  @JsonKey(ignore: true)
  _$$_TemplateModelCopyWith<_$_TemplateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

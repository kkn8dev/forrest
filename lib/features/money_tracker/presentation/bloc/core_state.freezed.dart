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
mixin _$MoneyTrackerState {
  List<TransactionEntity> get transactions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoneyTrackerStateCopyWith<MoneyTrackerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyTrackerStateCopyWith<$Res> {
  factory $MoneyTrackerStateCopyWith(
          MoneyTrackerState value, $Res Function(MoneyTrackerState) then) =
      _$MoneyTrackerStateCopyWithImpl<$Res, MoneyTrackerState>;
  @useResult
  $Res call({List<TransactionEntity> transactions});
}

/// @nodoc
class _$MoneyTrackerStateCopyWithImpl<$Res, $Val extends MoneyTrackerState>
    implements $MoneyTrackerStateCopyWith<$Res> {
  _$MoneyTrackerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MoneyTrackerStateCopyWith<$Res>
    implements $MoneyTrackerStateCopyWith<$Res> {
  factory _$$_MoneyTrackerStateCopyWith(_$_MoneyTrackerState value,
          $Res Function(_$_MoneyTrackerState) then) =
      __$$_MoneyTrackerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionEntity> transactions});
}

/// @nodoc
class __$$_MoneyTrackerStateCopyWithImpl<$Res>
    extends _$MoneyTrackerStateCopyWithImpl<$Res, _$_MoneyTrackerState>
    implements _$$_MoneyTrackerStateCopyWith<$Res> {
  __$$_MoneyTrackerStateCopyWithImpl(
      _$_MoneyTrackerState _value, $Res Function(_$_MoneyTrackerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$_MoneyTrackerState(
      null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
    ));
  }
}

/// @nodoc

class _$_MoneyTrackerState implements _MoneyTrackerState {
  _$_MoneyTrackerState([final List<TransactionEntity> transactions = const []])
      : _transactions = transactions;

  final List<TransactionEntity> _transactions;
  @override
  @JsonKey()
  List<TransactionEntity> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'MoneyTrackerState(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoneyTrackerState &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoneyTrackerStateCopyWith<_$_MoneyTrackerState> get copyWith =>
      __$$_MoneyTrackerStateCopyWithImpl<_$_MoneyTrackerState>(
          this, _$identity);
}

abstract class _MoneyTrackerState implements MoneyTrackerState {
  factory _MoneyTrackerState([final List<TransactionEntity> transactions]) =
      _$_MoneyTrackerState;

  @override
  List<TransactionEntity> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$_MoneyTrackerStateCopyWith<_$_MoneyTrackerState> get copyWith =>
      throw _privateConstructorUsedError;
}

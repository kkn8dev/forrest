import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/entity.dart';

part 'core_state.freezed.dart';

@freezed
class MoneyTrackerState with _$MoneyTrackerState {
  factory MoneyTrackerState([
    @Default([]) List<TransactionEntity> transactions,
    @Default([]) List<TransactionCategoryEntity> transactionCategories,
  ]) = _MoneyTrackerState;
}

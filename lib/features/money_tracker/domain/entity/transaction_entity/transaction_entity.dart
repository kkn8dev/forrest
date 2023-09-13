import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_entity.freezed.dart';

@freezed
class TransactionEntity with _$TransactionEntity {
  const TransactionEntity._();

  const factory TransactionEntity({
    required String uuid,
    required int amount,
    required String text,
    required String description,
    required String source,
    required TransactionType transactionType,
    required int year,
    required int month,
    required int day,
  }) = _TransactionEntity;
}

enum TransactionType { income, outcome }

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category_entity.freezed.dart';

@freezed
class TransactionCategoryEntity with _$TransactionCategoryEntity {
  const TransactionCategoryEntity._();

  const factory TransactionCategoryEntity({
    required String uuid,
    required Color color,
    required String label,
  }) = _TransactionCategoryEntity;
}

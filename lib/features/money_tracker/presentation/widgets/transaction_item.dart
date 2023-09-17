import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';
import '../../domain/entity/entity.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key? key,
    required this.transaction,
    required this.onTransactionTap,
  }) : super(key: key);

  final TransactionEntity transaction;
  final Function(TransactionEntity transactionEntity) onTransactionTap;

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return GestureDetector(
      onTap: () {
        onTransactionTap(transaction);
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 64, 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: appColors.black,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '${transaction.transactionType == TransactionType.income ? '+' : '-'}${transaction.amount.toString()}',
                      style: textStyles.h1.copyWith(
                        color: transaction.transactionType ==
                                TransactionType.income
                            ? appColors.success
                            : appColors.error,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        transaction.text,
                        style: textStyles.h2.copyWith(
                          color: appColors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  transaction.description,
                  style: textStyles.h3.copyWith(
                    color: appColors.white,
                  ),
                ),
              ],
            ),
          ),
          if (transaction.category != null)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: transaction.category!.color,
                ),
                child: Center(
                  child: Text(transaction.category!.label),
                ),
              ),
            ),
          Positioned(
            bottom: 8,
            right: 16,
            child: Text(
              '${transaction.day}/${transaction.month}',
              style: textStyles.button1.copyWith(
                color: appColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

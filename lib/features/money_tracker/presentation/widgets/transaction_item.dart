import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';
import '../../domain/entity/entity.dart';

class TransactionItem extends StatefulWidget {
  const TransactionItem({
    Key? key,
    required this.transaction,
    required this.onTransactionTap,
    required this.onTransactionDoubleTap,
    required this.onTransactionLongTap,
  }) : super(key: key);

  final TransactionEntity transaction;
  final Function(TransactionEntity transactionEntity) onTransactionTap;
  final Function(TransactionEntity transactionEntity) onTransactionDoubleTap;
  final Function(TransactionEntity transactionEntity) onTransactionLongTap;

  @override
  State<TransactionItem> createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {
  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return GestureDetector(
      onTap: () {
        widget.onTransactionTap(widget.transaction);
      },
      // onDoubleTap: () {
      //   widget.onTransactionDoubleTap(widget.transaction);
      // },
      // onLongPress: () {
      //   widget.onTransactionLongTap(widget.transaction);
      // },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: appColors.black,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '${widget.transaction.transactionType == TransactionType.income ? '+' : '-'}${widget.transaction.amount.toString()}',
                  style: textStyles.h1.copyWith(
                    color: widget.transaction.transactionType ==
                            TransactionType.income
                        ? appColors.success
                        : appColors.error,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  widget.transaction.text,
                  style: textStyles.button1.copyWith(
                    color: appColors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.transaction.description,
                  style: textStyles.h2.copyWith(
                    color: appColors.white,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  widget.transaction.source,
                  style: textStyles.h3.copyWith(
                    color: appColors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

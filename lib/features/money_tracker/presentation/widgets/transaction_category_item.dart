import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';
import '../../domain/entity/entity.dart';

class TransactionCategoryItem extends StatefulWidget {
  const TransactionCategoryItem({
    Key? key,
    required this.category,
    required this.onTransactionCategoryTap,
  }) : super(key: key);

  final TransactionCategoryEntity category;
  final Function(TransactionCategoryEntity transactionEntity)
      onTransactionCategoryTap;

  @override
  State<TransactionCategoryItem> createState() =>
      _TransactionCategoryItemState();
}

class _TransactionCategoryItemState extends State<TransactionCategoryItem> {
  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return GestureDetector(
      onTap: () {
        widget.onTransactionCategoryTap(widget.category);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: widget.category.color,
        ),
        child: Center(
          child: Text(
            widget.category.label,
            style: textStyles.p1,
          ),
        ),
      ),
    );
  }
}

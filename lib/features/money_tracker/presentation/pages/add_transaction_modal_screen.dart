import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:forrest/features/money_tracker/presentation/widgets/transaction_category_item.dart';
import 'package:uuid/uuid.dart';

import '../../../../navigation/forrest_router.dart';
import '../../../core/presentation/widgets/widgets.dart';
import '../../domain/entity/entity.dart';
import '../bloc/bloc.dart';

@RoutePage()
class AddTransactionModalScreen extends StatefulWidget {
  const AddTransactionModalScreen({
    Key? key,
    this.transaction,
  }) : super(key: key);

  final TransactionEntity? transaction;

  @override
  State<AddTransactionModalScreen> createState() =>
      _AddTransactionModalScreenState();
}

class _AddTransactionModalScreenState extends State<AddTransactionModalScreen> {
  late MoneyTrackerBloc moneyTrackerBloc = context.read<MoneyTrackerBloc>();
  TextEditingController textController = TextEditingController();
  TextEditingController amountTextController = TextEditingController();
  TransactionCategoryEntity? category;

  @override
  void initState() {
    if (widget.transaction != null) {
      textController.text = widget.transaction!.text;
      amountTextController.text = widget.transaction!.amount.toString();
      category = widget.transaction!.category;
    }
    super.initState();
  }

  onDelete() {
    moneyTrackerBloc.add(
      DeleteTransactionCoreEvent(
        transactionEntity: widget.transaction!,
      ),
    );
    ForrestRouter.inst.pop();
  }

  onTap() {
    var uuid = const Uuid();
    var now = DateTime.now();
    var currentDay = now.day;
    var currentMonth = now.month;
    var currentYear = now.year;
    if (widget.transaction == null) {
      moneyTrackerBloc.add(
        CreateTransactionCoreEvent(
          transactionEntity: TransactionEntity(
            uuid: uuid.v4(),
            text: textController.value.text,
            description: textController.value.text,
            source: textController.value.text,
            transactionType: TransactionType.income,
            amount: int.parse(amountTextController.value.text),
            year: currentYear,
            month: currentMonth,
            day: currentDay,
            category: category,
          ),
        ),
      );
    } else {
      moneyTrackerBloc.add(
        EditTransactionCoreEvent(
          transactionEntity: TransactionEntity(
            uuid: widget.transaction!.uuid,
            text: textController.value.text,
            description: textController.value.text,
            source: textController.value.text,
            transactionType: widget.transaction!.transactionType,
            amount: int.tryParse(amountTextController.value.text) ?? 0,
            category: category,
            year: currentYear,
            month: currentMonth,
            day: currentDay,
          ),
        ),
      );
    }
    ForrestRouter.inst.pop();
  }

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    return BlocBuilder<MoneyTrackerBloc, MoneyTrackerState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            ForrestRouter.inst.pop();
          },
          child: Scaffold(
            backgroundColor: const Color(0xFF000000).withOpacity(0.5),
            body: GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.all(32),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: const Color(0xFF833991),
                    ),
                    width: double.infinity,
                    height: 400,
                    child: Center(
                      child: Column(
                        children: [
                          TextField(
                            controller: textController,
                          ),
                          const SizedBox(height: 32),
                          TextField(
                            controller: amountTextController,
                          ),
                          const SizedBox(height: 32),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: state.transactionCategories
                                  .map((e) => TransactionCategoryItem(
                                      category: e,
                                      onTransactionCategoryTap: (e) {
                                        setState(() {
                                          category = e;
                                        });
                                      }))
                                  .toList(),
                            ),
                          ),
                          Button1(
                            label: t.moneyTracker_addTransactionButton,
                            onTap: onTap,
                          ),
                          if (widget.transaction != null)
                            Padding(
                              padding: const EdgeInsets.only(top: 32),
                              child: Button1(
                                label: t.moneyTracker_deleteTransactionButton,
                                onTap: onDelete,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:forrest/features/core/presentation/widgets/widgets.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';
import 'package:forrest/features/money_tracker/presentation/bloc/bloc.dart';
import 'package:forrest/features/money_tracker/presentation/widgets/widgets.dart';
import 'package:forrest/navigation/forrest_router.dart';

@RoutePage()
class TransactionCategoriesScreen extends StatefulWidget {
  const TransactionCategoriesScreen({super.key});

  @override
  State<TransactionCategoriesScreen> createState() =>
      _TransactionCategoriesScreenState();
}

class _TransactionCategoriesScreenState
    extends State<TransactionCategoriesScreen> {
  int currentDay = 1;
  late MoneyTrackerBloc moneyTrackerBloc = context.read<MoneyTrackerBloc>();

  @override
  void initState() {
    moneyTrackerBloc.add(LoadMoneyTrackerEvent());
    final day = DateTime.now().day;
    setState(() {
      currentDay = day;
    });
    super.initState();
  }

  onTap() {
    ForrestRouter.inst.openAddTransactionCategoryModal(null);
  }

  onDeleteTransaction(TransactionEntity transactionEntity) {
    moneyTrackerBloc.add(
      DeleteTransactionCoreEvent(transactionEntity: transactionEntity),
    );
  }

  onEditTransactionCategory(TransactionCategoryEntity transactionEntity) {
    ForrestRouter.inst.openAddTransactionCategoryModal(transactionEntity);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return BlocBuilder<MoneyTrackerBloc, MoneyTrackerState>(
      builder: (context, state) {
        final transactions = state.transactions
            .where(
              (element) => element.day == currentDay,
            )
            .toList();
        return ScreenBox(
          backgroundColor: Colors.amber,
          child: Column(
            children: [
              SizedBox(
                height: 380,
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: state.transactionCategories
                      .map(
                        (e) => TransactionCategoryItem(
                          category: e,
                          onTransactionCategoryTap: onEditTransactionCategory,
                        ),
                      )
                      .toList(),
                ),
              ),
              Button1(
                label: t.moneyTrackerScreen_addTransactionButton,
                onTap: onTap,
              ),
            ],
          ),
        );
      },
    );
  }
}

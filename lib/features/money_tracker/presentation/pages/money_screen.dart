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
class MoneyScreen extends StatefulWidget {
  const MoneyScreen({super.key});

  @override
  State<MoneyScreen> createState() => _MoneyScreenState();
}

class _MoneyScreenState extends State<MoneyScreen> {
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
    ForrestRouter.inst.openAddTransactionModal(null);
  }

  goToCategoriesScreen() {
    ForrestRouter.inst.goToTransactionCategories();
  }

  onEditTransaction(TransactionEntity transactionEntity) {
    ForrestRouter.inst.openAddTransactionModal(transactionEntity);
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
              Calendar(
                currentDay: currentDay,
                onDayPressed: (day) {
                  setState(() {
                    currentDay = day;
                  });
                },
              ),
              const SizedBox(height: 32),
              Button1(
                label: 'open categories screen',
                onTap: goToCategoriesScreen,
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 380,
                child: ListView.separated(
                  itemBuilder: (_, i) {
                    return TransactionItem(
                      transaction: transactions[i],
                      onTransactionTap: onEditTransaction,
                    );
                  },
                  itemCount: transactions.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 16);
                  },
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

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../navigation/forrest_router.dart';
import '../../../core/presentation/widgets/widgets.dart';
import '../../domain/entity/entity.dart';
import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

@RoutePage()
class MoneyScreen extends StatefulWidget {
  const MoneyScreen({Key? key}) : super(key: key);

  @override
  State<MoneyScreen> createState() => _MoneyScreenState();
}

class _MoneyScreenState extends State<MoneyScreen> {
  int currentDay = 1;
  late MoneyTrackerBloc moneyTrackerBloc = context.read<MoneyTrackerBloc>();

  @override
  void initState() {
    moneyTrackerBloc.add(LoadMoneyTrackerEvent());
    var day = DateTime.now().day;
    setState(() {
      currentDay = day;
    });
    super.initState();
  }

  onTap() {
    ForrestRouter.inst.openAddTransactionModal(null);
  }

  onDeleteTransaction(TransactionEntity transactionEntity) {
    moneyTrackerBloc.add(
      DeleteTransactionCoreEvent(transactionEntity: transactionEntity),
    );
  }

  onEditTransaction(TransactionEntity transactionEntity) {
    ForrestRouter.inst.openAddTransactionModal(transactionEntity);
  }

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;

    return BlocBuilder<MoneyTrackerBloc, MoneyTrackerState>(
      builder: (context, state) {
        var transactions = state.transactions
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
              SizedBox(
                height: 380,
                child: ListView.separated(
                  itemBuilder: (_, i) {
                    return TransactionItem(
                      transaction: transactions[i],
                      onTransactionDoubleTap: onDeleteTransaction,
                      onTransactionLongTap: onEditTransaction,
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

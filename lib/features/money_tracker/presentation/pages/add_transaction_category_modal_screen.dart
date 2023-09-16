import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uuid/uuid.dart';

import '../../../../navigation/forrest_router.dart';
import '../../../core/presentation/widgets/widgets.dart';
import '../../domain/entity/entity.dart';
import '../bloc/bloc.dart';

@RoutePage()
class AddTransactionCategoryModalScreen extends StatefulWidget {
  const AddTransactionCategoryModalScreen({
    Key? key,
    this.transaction,
  }) : super(key: key);

  final TransactionCategoryEntity? transaction;

  @override
  State<AddTransactionCategoryModalScreen> createState() =>
      _AddTransactionCategoryModalScreenState();
}

class _AddTransactionCategoryModalScreenState
    extends State<AddTransactionCategoryModalScreen> {
  late MoneyTrackerBloc moneyTrackerBloc = context.read<MoneyTrackerBloc>();
  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    if (widget.transaction != null) {
      textController.text = widget.transaction!.label;
    }
    super.initState();
  }

  onDelete() {
    moneyTrackerBloc.add(
      DeleteTransactionCategoryCoreEvent(
        transactionEntity: widget.transaction!,
      ),
    );
    ForrestRouter.inst.pop();
  }

  onTap() {
    var uuid = const Uuid();
    var currentDay = DateTime.now().day;
    if (widget.transaction == null) {
      moneyTrackerBloc.add(
        CreateTransactionCategoryCoreEvent(
          transactionEntity: TransactionCategoryEntity(
            uuid: uuid.v4(),
            color: Colors.red,
            label: 'label',
          ),
        ),
      );
    } else {
      moneyTrackerBloc.add(
        EditTransactionCategoryCoreEvent(
          transactionEntity: TransactionCategoryEntity(
            uuid: widget.transaction!.uuid,
            color: Colors.red,
            label: 'label',
          ),
        ),
      );
    }
    ForrestRouter.inst.pop();
  }

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;

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
  }
}

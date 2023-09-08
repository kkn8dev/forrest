import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../helpers/notification_service.dart';
import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

@RoutePage()
class MoneyScreen extends StatefulWidget {
  const MoneyScreen({Key? key}) : super(key: key);

  @override
  State<MoneyScreen> createState() => _MoneyScreenState();
}

class _MoneyScreenState extends State<MoneyScreen> {
  onTap() {
    print(12);
    NotificationService().showNotification(
      title: 'Hello friend',
      body: 'Get some active work',
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreBloc, CoreState>(
      builder: (context, state) {
        return ScreenBox(
          backgroundColor: const Color(0xFF833991),
          child: Center(
            child: Button2(
              label: "show notification",
              onTap: onTap,
            ),
          ),
        );
      },
    );
  }
}

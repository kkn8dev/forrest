import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreBloc, CoreState>(
      builder: (context, state) {
        return ScreenBox(
          backgroundColor: Color(0xFFFF5F96),
          child: Center(
            child: Button2(
              label: 'get request',
              onTap: () {
                context.read<CoreBloc>().add(InitCoreEvent());
              },
            ),
          ),
        );
      },
    );
  }
}

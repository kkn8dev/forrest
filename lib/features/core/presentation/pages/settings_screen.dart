import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../extensions/extensions.dart';
import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late CoreBloc coreBloc = context.read<CoreBloc>();

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return BlocBuilder<CoreBloc, CoreState>(
      builder: (context, state) {
        return ScreenBox(
          backgroundColor: const Color(0xFFFF5F96),
          child: Column(
            children: [
              Button1(
                label: 'get request',
                onTap: () {
                  context.read<CoreBloc>().add(InitCoreEvent());
                },
              ),
              GestureDetector(
                onTap: () {
                  coreBloc.add(ToggleThemeCoreEvent());
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      CupertinoSwitch(
                        value: state.theme == 'dark',
                        onChanged: (bool value) {
                          coreBloc.add(ToggleThemeCoreEvent());
                        },
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'Dark Theme',
                        style: textStyles.button1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

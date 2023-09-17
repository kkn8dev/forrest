import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../extensions/extensions.dart';
import '../../data/data_sources/data_sources.dart';
import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

@RoutePage()
class DevelopScreen extends StatefulWidget {
  const DevelopScreen({Key? key}) : super(key: key);

  @override
  State<DevelopScreen> createState() => _DevelopScreenState();
}

class _DevelopScreenState extends State<DevelopScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>();
    late CoreBloc coreBloc = context.read<CoreBloc>();

    return BlocBuilder<CoreBloc, CoreState>(
      builder: (context, state) {
        return ScreenBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _controller,
                // onChanged: onChanged,
                cursorWidth: 1,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  isDense: true,
                  fillColor: const Color(0xffF4F3F9),
                  filled: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Button1(
                  onTap: () async {},
                  label: 'Button1',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Button1(
                  onTap: () async {},
                  label: 'Button1 disabled',
                  isDisabled: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ValueListenableBuilder(
                  valueListenable: Hive.box<dynamic>(coreBox).listenable(),
                  builder: (BuildContext context, box, Widget? child) {
                    var isDevelop = box.get(environment) == 'develop';
                    return GestureDetector(
                      onTap: () {
                        if (isDevelop) {
                          box.put(environment, 'production');
                        } else {
                          box.put(environment, 'develop');
                        }
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            CupertinoSwitch(
                              value: isDevelop,
                              onChanged: (bool value) {
                                if (isDevelop) {
                                  box.put(environment, 'production');
                                } else {
                                  box.put(environment, 'develop');
                                }
                              },
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'Develop environment',
                              style: textStyles?.button1,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  coreBloc.add(ToggleMoneyTrackerFeatureCoreEvent());
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      CupertinoSwitch(
                        value: state.isMoneyTrackerAvailable,
                        onChanged: (bool value) {
                          coreBloc.add(ToggleMoneyTrackerFeatureCoreEvent());
                        },
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'Money Tracker Feature',
                        style: textStyles?.button1,
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

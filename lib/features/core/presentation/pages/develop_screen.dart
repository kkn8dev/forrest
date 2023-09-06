import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
                  fillColor: Color(0xffF4F3F9),
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
                  onTap: () async {
                    var box = await Hive.openBox(coreBox);
                    box.put(userId, _controller.value.text);
                  },
                  label: 'save',
                  isDisabled: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Button1(
                  onTap: () async {},
                  label: 'login',
                  isDisabled: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Button1(
                  onTap: () async {},
                  label: 'to home',
                  isDisabled: false,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

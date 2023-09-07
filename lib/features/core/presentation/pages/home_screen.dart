import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forrest/features/core/domain/entity/entity.dart';

import '../../../../extensions/extensions.dart';
import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CoreBloc coreBloc = context.read<CoreBloc>();
  int currentDay = 1;

  @override
  void initState() {
    coreBloc.add(LoadHabitsCoreEvent());
    super.initState();
  }

  onHabitTap(HabitEntity habitEntity) {
    coreBloc.add(
      ToggleHabitStatusCoreEvent(habit: habitEntity),
    );
  }

  createHabit() {
    coreBloc.add(
      CreateHabitCoreEvent(
        habit: const HabitEntity(
          isCompleted: false,
          text: 'New habit',
          year: 2023,
          month: 9,
          day: 9,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;

    return BlocBuilder<CoreBloc, CoreState>(
      builder: (context, state) {
        var habits = state.habits
            .where(
              (element) => element.day == currentDay,
            )
            .toList();

        return ScreenBox(
          backgroundColor: appColors.white,
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
              Button2(
                label: "Add habit",
                onTap: createHabit,
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 400,
                child: ListView.separated(
                  itemBuilder: (_, i) {
                    return HabitItem(
                      habit: habits[i],
                      onHabitTap: onHabitTap,
                    );
                  },
                  itemCount: habits.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 16);
                  },
                ),
              ),
              Button1(
                label: "Add habit",
                onTap: createHabit,
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../../../extensions/extensions.dart';
import '../../domain/entity/entity.dart';
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
  TextEditingController newHabitTextController = TextEditingController();

  @override
  void initState() {
    coreBloc.add(LoadHabitsCoreEvent());
    var day = DateTime.now().day;
    setState(() {
      currentDay = day;
    });
    super.initState();
  }

  onHabitTap(HabitEntity habitEntity) {
    if (!habitEntity.isLocked) {
      coreBloc.add(
        ToggleHabitStatusCoreEvent(habit: habitEntity),
      );
    }
  }

  onHabitLongTap(HabitEntity habitEntity) {
    coreBloc.add(
      ToggleHabitLockCoreEvent(habit: habitEntity),
    );
  }

  onDeleteHabit(HabitEntity habitEntity) {
    coreBloc.add(
      DeleteHabitCoreEvent(habit: habitEntity),
    );
  }

  createHabit() {
    var uuid = const Uuid();
    coreBloc.add(
      CreateHabitCoreEvent(
        habit: HabitEntity(
          uuid: uuid.v4(),
          isCompleted: false,
          isLocked: false,
          text: newHabitTextController.value.text,
          year: 2023,
          month: 9,
          day: currentDay,
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
              const SizedBox(height: 32),
              TextField(
                controller: newHabitTextController,
              ),
              const SizedBox(height: 32),
              Button2(
                label: "Add habit",
                onTap: createHabit,
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 380,
                child: ListView.separated(
                  itemBuilder: (_, i) {
                    return HabitItem(
                      habit: habits[i],
                      onDeleteHabit: onDeleteHabit,
                      onHabitTap: onHabitTap,
                      onHabitLongTap: onHabitLongTap,
                    );
                  },
                  itemCount: habits.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 16);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  int currentDay = 0;

  @override
  Widget build(BuildContext context) {
    var habits = coreBloc.state.habits
        .where(
          (element) => element.day == currentDay,
        )
        .toList();
    return ScreenBox(
      backgroundColor: const Color(0xFF8ADB53),
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
            height: 400,
            child: ListView.separated(
              itemBuilder: (_, i) {
                return HabitItem(habit: habits[i]);
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
  }
}

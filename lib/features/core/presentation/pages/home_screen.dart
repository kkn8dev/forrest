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
  String activeIndex = '';
  int length = 0;
  bool isLoading = false;
  late CoreBloc coreBloc = context.read<CoreBloc>();

  @override
  void initState() {
    super.initState();
  }

  void updateActiveIndex(String newActiveIndex) async {
    setState(() {
      activeIndex = newActiveIndex;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ScreenBox(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20 + 14),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20, top: 8),
              ),
            ],
          ),
        ),
        if (isLoading)
          Container(
              color: const Color(0x99000000),
              child: const Center(child: CircularProgressIndicator()))
      ],
    );
  }
}

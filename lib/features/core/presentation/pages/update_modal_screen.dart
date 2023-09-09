import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forrest/navigation/forrest_router.dart';

import '../bloc/bloc.dart';

@RoutePage()
class UpdateModalScreen extends StatefulWidget {
  const UpdateModalScreen({Key? key}) : super(key: key);

  @override
  State<UpdateModalScreen> createState() => _UpdateModalScreenState();
}

class _UpdateModalScreenState extends State<UpdateModalScreen> {
  late CoreBloc coreBloc = context.read<CoreBloc>();

  @override
  Widget build(BuildContext context) {
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
                child: const Center(
                  child: Text("money"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

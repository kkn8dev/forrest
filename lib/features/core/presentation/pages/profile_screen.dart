import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forrest/navigation/forrest_router.dart';

import '../../../../styles/app_images.dart';
import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreBloc, CoreState>(
      builder: (context, state) {
        return ScreenBox(
          backgroundColor: const Color(0xFF36DBFF),
          child: Center(
            child: GestureDetector(
              onTap: () {
                ForrestRouter.inst.openUpdateModal();
              },
              child: Image.asset(
                AppImages.logoPng,
                width: 300,
                height: 300,
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../extensions/extensions.dart';
import '../../../../navigation/auto_router.gr.dart';
import '../../../../styles/app_images.dart';
import '../../../money_tracker/presentation/components/components.dart';
import '../bloc/bloc.dart';

@RoutePage()
class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(context) {
    var appColors = Theme.of(context).extension<AppColors>()!;

    return BlocBuilder<CoreBloc, CoreState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AutoTabsRouter.tabBar(
            physics: const NeverScrollableScrollPhysics(),
            routes: [
              const HomeTab(),
              if (state.isMoneyTrackerAvailable) const MoneyTab(),
              const ProfileTab(),
              const SettingsTab(),
            ],
            builder: (context, child, controller) {
              return Scaffold(
                backgroundColor: appColors.white,
                extendBody: true,
                body: child,
                bottomNavigationBar: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                      decoration: const BoxDecoration(
                        color: Color(0xFF36DBFF),
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x30000000),
                            spreadRadius: 4,
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: TabBar(
                        controller: controller,
                        labelPadding: EdgeInsets.zero,
                        indicatorColor: Colors.transparent,
                        tabs: [
                          const Tab(
                            icon: Icon(
                              Icons.forward_10_outlined,
                              size: 40,
                            ),
                            iconMargin: EdgeInsets.zero,
                          ),
                          if (state.isMoneyTrackerAvailable)
                            const MoneyTrackerTab(),
                          Image.asset(
                            AppImages.logoPng,
                            width: 48,
                            height: 48,
                          ),
                          const Tab(
                            icon: Icon(
                              Icons.settings_outlined,
                              size: 40,
                            ),
                            iconMargin: EdgeInsets.zero,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';
import '../../../../navigation/auto_router.gr.dart';
import '../../../../styles/app_images.dart';

@RoutePage()
class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return WillPopScope(
      onWillPop: () async => false,
      child: AutoTabsRouter.tabBar(
        physics: const NeverScrollableScrollPhysics(),
        routes: const [
          HomeTab(),
          DeveloperTab(),
          DeveloperTab(),
        ],
        builder: (context, child, controller) {
          return Scaffold(
            backgroundColor: appColors.white,
            extendBody: true,
            body: child,
            bottomNavigationBar: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  decoration: const BoxDecoration(
                    color: Color(0xFF1D1C1D),
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x10000000),
                        spreadRadius: 4,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      TabBar(
                        indicator: const BoxDecoration(
                          color: Color(0xFF1D1C1D),
                          borderRadius: BorderRadius.all(Radius.circular(36)),
                        ),
                        controller: controller,
                        labelColor: const Color(0xFF4CD9A6),
                        labelStyle: const TextStyle(fontSize: 8),
                        labelPadding: EdgeInsets.zero,
                        unselectedLabelColor: const Color(0xFFFFFFFF),
                        tabs: [
                          GestureDetector(
                            onTap: null,
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  controller.index == 0
                                      ? Image.asset(
                                          AppImages.logoPng,
                                          height: 24,
                                        )
                                      : Image.asset(
                                          AppImages.logoPng,
                                          height: 24,
                                        ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      'translation.myGenerations',
                                      style: textStyles.p3.copyWith(
                                          color: controller.index == 0
                                              ? const Color(0xFF4CD9A6)
                                              : const Color(0xFFFFFFFF)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              controller.index == 2
                                  ? Image.asset(
                                      AppImages.logoPng,
                                      height: 24,
                                    )
                                  : Image.asset(
                                      AppImages.logoPng,
                                      height: 24,
                                    ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'translation.settings',
                                  style: textStyles.p3.copyWith(
                                      color: controller.index == 2
                                          ? const Color(0xFF4CD9A6)
                                          : const Color(0xFFFFFFFF)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        top: -28,
                        left: (MediaQuery.of(context).size.width - 60) / 2 - 58,
                        child: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {},
                          child: Container(
                            color: Colors.transparent,
                            child: Image.asset(
                              AppImages.logoPng,
                              height: 94,
                              width: 116,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

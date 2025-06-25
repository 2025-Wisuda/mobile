import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/duty_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/home/presentation/widgets/widget.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';

import 'package:mobile/features/menu/presentation/controllers/controller.dart'
    as menu;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuController = Get.find<menu.MainMenuController>();
    final dutyScheduleTodayController =
        Get.find<DutyScheduleForTodayController>();
    final myLabScheduleController = Get.find<MyLabScheduleController>();
    final navigationController = Get.find<menu.NavigationController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      dutyScheduleTodayController.fetchDutyScheduleForToday();

      if (menuController.mainMenuList.isEmpty) {
        menuController.loadMenuData();
      }
      menuController.loadMenuData();
    });

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppBarWidget(),
          SliverToBoxAdapter(
              child: HomeWrapperWidget(
            dutyC: dutyScheduleTodayController,
            menuC: menuController,
            labC: myLabScheduleController,
            navC: navigationController,
          )),
        ],
      ),
    );
  }
}

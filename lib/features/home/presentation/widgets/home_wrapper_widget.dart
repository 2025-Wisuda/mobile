import 'package:flutter/material.dart';

import 'package:mobile/features/duty_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/home/presentation/widgets/widget.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';

import 'package:mobile/features/menu/presentation/controllers/controller.dart'
    as menu;

class HomeWrapperWidget extends StatelessWidget {
  final DutyScheduleForTodayController dutyC;
  final menu.MainMenuController menuC;
  final MyLabScheduleController labC;
  final menu.NavigationController navC;

  const HomeWrapperWidget(
      {super.key,
      required this.dutyC,
      required this.menuC,
      required this.labC,
      required this.navC});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          HomeMyLabScheduleSectionWidget(
            labC: labC,
            navC: navC,
          ),
          HomeMenuSectionWidget(c: menuC),
          HomeDutyScheduleSectionWidget(
            c: dutyC,
          ),
        ],
      ),
    );
  }
}

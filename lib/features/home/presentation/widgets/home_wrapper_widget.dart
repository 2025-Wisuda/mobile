import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/home/presentation/widgets/widget.dart';
import 'package:mobile/features/menu/presentation/controllers/controller.dart';

class HomeWrapperWidget extends StatelessWidget {
  const HomeWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeMyLabScheduleSection(),
            HomeMenuSection(
              controller: Get.find<MainMenuController>(),
            ),
            HomeDutyScheduleSection(),
          ],
        ),
      ),
    );
  }
}

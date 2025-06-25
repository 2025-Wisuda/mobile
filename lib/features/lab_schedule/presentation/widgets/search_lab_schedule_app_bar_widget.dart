import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SearchLabScheduleAppBarWidget extends StatelessWidget {
  final bool isMySchedule;
  final VoidCallback? onTapBackButton;
  final VoidCallback onToggle;

  const SearchLabScheduleAppBarWidget({
    super.key,
    required this.isMySchedule,
    this.onTapBackButton,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTertiaryAppBarWidget(
      toolbarHeight: 76,
      pinned: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: onTapBackButton ?? () => Get.back(),
      ),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: SizedBox.shrink(),
      ),
      title: SearchLabScheduleFormWidget(),
    );
  }
}

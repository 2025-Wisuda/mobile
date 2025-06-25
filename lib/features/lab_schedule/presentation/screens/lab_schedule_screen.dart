import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/shared.dart';

class LabScheduleScreen extends StatefulWidget {
  const LabScheduleScreen({super.key});

  @override
  State<LabScheduleScreen> createState() => _LabScheduleScreenState();
}

class _LabScheduleScreenState extends State<LabScheduleScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      Get.find<LabScheduleWrapperController>(tag: 'list').triggerLoadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final labScheduleWrapperController =
        Get.find<LabScheduleWrapperController>(tag: 'list');

    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          final controller = labScheduleWrapperController.isMySchedule.value
              ? Get.find<MyLabScheduleController>(tag: 'list')
              : Get.find<ListLabScheduleController>(tag: 'list');

          final dateString = DateHelper.formatIsoDate(
              date: labScheduleWrapperController.selectedDate.value);
          await controller.fetchList(filters: {'date': dateString});
        },
        child: Scrollbar(
          controller: _scrollController,
          child: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              Obx(() => ListLabScheduleAppBarWidget(
                    isMySchedule:
                        labScheduleWrapperController.isMySchedule.value,
                    onToggle: labScheduleWrapperController.isMySchedule.value
                        ? labScheduleWrapperController.switchToAllSchedule
                        : labScheduleWrapperController.switchToMySchedule,
                  )),
              ListLabScheduleWrapperWidget(c: labScheduleWrapperController),
            ],
          ),
        ),
      ),
    );
  }
}

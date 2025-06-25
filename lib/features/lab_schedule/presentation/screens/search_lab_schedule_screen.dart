import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SearchLabScheduleScreen extends StatefulWidget {
  const SearchLabScheduleScreen({super.key});

  @override
  State<SearchLabScheduleScreen> createState() =>
      _SearchLabScheduleScreenState();
}

class _SearchLabScheduleScreenState extends State<SearchLabScheduleScreen> {
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
      Get.find<LabScheduleWrapperController>(tag: 'search').triggerLoadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final labScheduleWrapperController =
        Get.find<LabScheduleWrapperController>(tag: 'search');

    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          final controller = labScheduleWrapperController.isMySchedule.value
              ? Get.find<MyLabScheduleController>(tag: 'search')
              : Get.find<ListLabScheduleController>(tag: 'search');

          final searchKey = '${controller.baseStateKey}SearchController';
          final currentQuery = controller.getControllerValue(searchKey);
          if (currentQuery.isNotEmpty) {
            await controller.search(currentQuery);
          } else {
            null;
          }
        },
        child: Scrollbar(
          controller: _scrollController,
          thickness: 5,
          radius: const Radius.circular(3),
          child: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              Obx(() => SearchLabScheduleAppBarWidget(
                    isMySchedule:
                        labScheduleWrapperController.isMySchedule.value,
                    onTapBackButton: _handleBackButtonTap,
                    onToggle: () =>
                        labScheduleWrapperController.isMySchedule.value
                            ? labScheduleWrapperController.switchToAllSchedule()
                            : labScheduleWrapperController.switchToMySchedule(),
                  )),
              SearchLabScheduleWrapperWidget(c: labScheduleWrapperController),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          _buildStickyFooter(context, labScheduleWrapperController),
    );
  }

  void _handleBackButtonTap() {
    final c = Get.find<LabScheduleWrapperController>(tag: 'search');
    final controller = c.isMySchedule.value
        ? Get.find<MyLabScheduleController>(tag: 'search')
        : Get.find<ListLabScheduleController>(tag: 'search');

    controller.clearAll();

    if (Get.isRegistered<MyLabScheduleController>(tag: 'search')) {
      Get.delete<MyLabScheduleController>(tag: 'search', force: true);
    }
    if (Get.isRegistered<ListLabScheduleController>(tag: 'search')) {
      Get.delete<ListLabScheduleController>(tag: 'search', force: true);
    }
    if (Get.isRegistered<LabScheduleWrapperController>(tag: 'search')) {
      Get.delete<LabScheduleWrapperController>(tag: 'search', force: true);
    }

    Get.back();
  }

  Widget _buildStickyFooter(
      BuildContext context, LabScheduleWrapperController c) {
    return Obx(() {
      final isMySchedule = c.isMySchedule.value;
      final controller = isMySchedule
          ? Get.find<MyLabScheduleController>(tag: 'search')
          : Get.find<ListLabScheduleController>(tag: 'search');

      return StickyFooterWidget(
        itemCount: controller.itemsCount,
        label: isMySchedule
            ? 'labSchedule'
                .messageWith('itemCount.my', {'count': controller.itemsCount})
            : 'labSchedule'
                .messageWith('itemCount.all', {'count': controller.itemsCount}),
      );
    });
  }
}

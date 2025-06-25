import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/lab_schedule_list_item_widget.dart';
import 'package:mobile/shared/enums/fetch_state_enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LabSchedulePaginatedListWidget extends StatelessWidget {
  final bool isMySchedule;
  final String searchQuery;
  final bool isShowDate;
  final bool isShowDuration;
  final String tag;

  const LabSchedulePaginatedListWidget({
    super.key,
    required this.isMySchedule,
    this.searchQuery = '',
    this.isShowDate = false,
    this.isShowDuration = false,
    this.tag = 'default',
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final controller = isMySchedule
          ? Get.find<MyLabScheduleController>(tag: tag)
          : Get.find<ListLabScheduleController>(tag: tag);

      final state = controller.state;
      final schedules = isMySchedule
          ? (controller as MyLabScheduleController).myLabScheduleList
          : (controller as ListLabScheduleController).labScheduleList;

      return _buildContent(context, controller, state, schedules);
    });
  }

  Widget _buildContent(BuildContext context, dynamic controller,
      FetchStateEnum state, List schedules) {
    return switch (state) {
      FetchStateEnum.loading ||
      FetchStateEnum.searching ||
      FetchStateEnum.filtering when schedules.isEmpty =>
        customHandlingStateWidget(
          context,
          title: isMySchedule
              ? 'labSchedule'.message('loadingMySchedule')
              : 'labSchedule'.message('loadingAllSchedule'),
        ),
      FetchStateEnum.refreshing when schedules.isNotEmpty =>
        _buildScheduleList(controller, schedules),
      FetchStateEnum.failure ||
      FetchStateEnum.timeout =>
        customHandlingStateWidget(
          context,
          item: Icon(
            Icons.error_outline,
            size: 64,
            color: context.error,
          ),
          title: controller.errorMessage,
        ),
      FetchStateEnum.empty => _buildEmptyStateWidget(context),
      FetchStateEnum.success when schedules.isEmpty =>
        _buildEmptyStateWidget(context),
      FetchStateEnum.success => _buildScheduleList(controller, schedules),
      FetchStateEnum.loadingMore => _buildScheduleList(controller, schedules),
      _ when schedules.isNotEmpty => _buildScheduleList(controller, schedules),
      _ => _buildEmptyStateWidget(context),
    };
  }

  Widget _buildEmptyStateWidget(BuildContext context) {
    if (_isInSearchMode() && searchQuery.isEmpty) {
      final controller = isMySchedule
          ? Get.find<MyLabScheduleController>(tag: tag)
          : Get.find<ListLabScheduleController>(tag: tag);

      final isInitialState = controller.state == FetchStateEnum.initial;

      if (isInitialState) {
        return customHandlingStateWidget(
          context,
          item: Icon(
            Icons.search_outlined,
            size: 64,
            color: context.outline,
          ),
          title: 'labSchedule'.message('searchInitialTitle'),
          subtitle: 'labSchedule'.message('searchInitialSubtitle'),
        );
      }
    }

    // If user searched but no results
    if (searchQuery.isNotEmpty) {
      return customHandlingStateWidget(
        context,
        item: Icon(
          Icons.search_off_rounded,
          size: 64,
          color: context.onSurface.withValues(alpha: 0.6),
        ),
        title: 'labSchedule'.message('noScheduleFound'),
        subtitle: 'labSchedule'.message('searchTryDifferentKeywords'),
      );
    }

    return customHandlingStateWidget(
      context,
      item: Icon(
        Icons.calendar_today_outlined,
        size: 64,
        color: context.onSurface.withValues(alpha: 0.6),
      ),
      title: isMySchedule
          ? 'labSchedule'.message('myScheduleEmpty')
          : 'labSchedule'.message('allScheduleEmpty'),
    );
  }

  Widget _buildScheduleList(dynamic controller, List schedules) {
    return Column(
      children: [
        LabScheduleListItemWidget(
          schedules: schedules.cast(),
          isShowDate: isShowDate,
          isShowDuration: isShowDuration,
        ),
        if (controller.isLoadingMore)
          const Center(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CustomPrimaryLoadingWidget()),
          ),
      ],
    );
  }

  bool _isInSearchMode() {
    return Get.currentRoute.contains('search');
  }
}

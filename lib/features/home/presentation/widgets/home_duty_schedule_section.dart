import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

import 'package:mobile/features/duty/domain/domain.dart'
    show DutyScheduleEntity;

class HomeDutyScheduleSection extends GetView<DutyScheduleForTodayController> {
  const HomeDutyScheduleSection({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.fetchList();
    });

    return CustomCardItemWidget(
        mainContent: _buildContent(context),
        backgroundColor: context.surface,
        showBorder: true,
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 8));
  }

  Widget _buildContent(BuildContext context) {
    return Obx(() {
      final schedules = controller.todayDutySchedules;
      final state = controller.state;

      switch (state) {
        case FetchStateEnum.loading:
          return _buildLoadingWidget(context, schedules);
        case FetchStateEnum.failure:
          return _buildErrorWidget(context);
        case FetchStateEnum.success:
          return _buildLoadedWidget(context, schedules);
        case FetchStateEnum.empty:
          return _buildEmptyWidget(context);
        default:
          return _buildLoadingWidget(context, schedules);
      }
    });
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('home'.message('dutySchedule.title'),
                style: context.bodyLargeW(500)),
            TextButton(
              onPressed: () {
                Get.toNamed(AppRoute.dutySchedule);
              },
              style: TextButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                'home'.message('dutySchedule.more'),
                style: context.bodyLargeW(500).copyWith(color: context.primary),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLoadedWidget(
      BuildContext context, RxList<DutyScheduleEntity> schedules) {
    return Column(
      children: [
        _buildHeader(context),
        DutyScheduleListItemWidget(
          schedules: schedules,
          isShowDivider: false,
        ),
      ],
    );
  }

  Widget _buildLoadingWidget(
      BuildContext context, RxList<DutyScheduleEntity> schedules) {
    return Column(
      children: [
        _buildHeader(context),
        Skeletonizer(
          child: DutyScheduleListItemWidget(
            schedules: schedules,
            isShowDivider: false,
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyWidget(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: customErrorEmptyTextWidget(
            context,
            message: controller.stateDescription,
          ),
        ),
        TextButton(
          onPressed: () {
            Get.toNamed(AppRoute.dutySchedule);
          },
          child: Text(
            'home'.message('dutySchedule.seeScheduleOtherDay'),
            style: context.bodyLargeW(500).copyWith(color: context.primary),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorWidget(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: _buildHeader(context),
        ),
        customErrorEmptyTextWidget(context,
            message: controller.stateDescription),
      ],
    );
  }
}

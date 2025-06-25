import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/duty_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/duty_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

import 'package:mobile/features/duty_schedule/domain/domain.dart'
    show DutyScheduleEntity;

class HomeDutyScheduleSectionWidget extends StatelessWidget {
  final DutyScheduleForTodayController c;
  const HomeDutyScheduleSectionWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
        mainContent: _buildContent(context, c),
        backgroundColor: context.surface,
        showBorder: true,
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 8));
  }

  Widget _buildContent(BuildContext context, DutyScheduleForTodayController c) {
    return Obx(() {
      final schedules = c.todayDutySchedules;
      final state = c.state;

      final errorMessage = c.errorMessage;

      switch (state) {
        case FetchStateEnum.loading:
          return _buildLoadingWidget(context, schedules);
        case FetchStateEnum.failure:
          return _buildErrorWidget(context, errorMessage);
        case FetchStateEnum.success:
          return _buildLoadedWidget(context, schedules);
        case FetchStateEnum.empty:
          return _buildEmptyWidget(context, errorMessage);
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
        DutyScheduleListItemWidget(schedules: schedules),
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

  Widget _buildEmptyWidget(BuildContext context, String errorMessage) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: customErrorEmptyTextWidget(
            context,
            message: errorMessage,
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

  Widget _buildErrorWidget(BuildContext context, String errorMessage) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: _buildHeader(context),
        ),
        customErrorEmptyTextWidget(context, message: errorMessage),
      ],
    );
  }
}

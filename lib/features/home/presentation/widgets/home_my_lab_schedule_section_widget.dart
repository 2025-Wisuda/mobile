import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

import 'package:mobile/features/lab_schedule/domain/domain.dart'
    show LabScheduleEntity;
import 'package:mobile/features/menu/presentation/controllers/controller.dart'
    as menu;

class HomeMyLabScheduleSectionWidget extends StatelessWidget {
  final MyLabScheduleController labC;
  final menu.NavigationController navC;

  const HomeMyLabScheduleSectionWidget(
      {super.key, required this.labC, required this.navC});

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
        mainContent: _buildContent(context, labC, navC),
        backgroundColor: context.surface,
        showBorder: true,
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8));
  }

  Widget _buildContent(BuildContext context, MyLabScheduleController c,
      menu.NavigationController navC) {
    final dateString = DateHelper.formatIsoDate(date: DateTime.now());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      c.fetchList(filters: {'date': dateString});
    });

    return Obx(() {
      final state = c.state;
      final schedules = c.myLabScheduleList;

      final errorMessage = c.errorMessage;

      switch (state) {
        case FetchStateEnum.loading:
          return _buildLoadingWidget(context, schedules, navC);
        case FetchStateEnum.failure:
          return _buildErrorWidget(context, errorMessage, navC);
        case FetchStateEnum.success:
          return _buildLoadedWidget(context, schedules, navC);
        case FetchStateEnum.empty:
          return _buildEmptyWidget(context, navC);

        default:
          return _buildLoadingWidget(context, schedules, navC);
      }
    });
  }

  Widget _buildHeader(BuildContext context, menu.NavigationController navC) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('home'.message('labSchedule.title'),
            style: context.bodyLargeW(500)),
        TextButton(
          onPressed: () => navC.changeIndex(1),
          child: Text(
            'home'.message('labSchedule.more'),
            style: context.bodyLargeW(500).copyWith(color: context.primary),
          ),
        ),
      ],
    );
  }

  Widget _buildLoadedWidget(BuildContext context,
      List<LabScheduleEntity> schedules, menu.NavigationController navC) {
    return Column(
      spacing: 8,
      children: [
        _buildHeader(context, navC),
        ExpandableMyLabScheduleWidget(schedules: schedules),
      ],
    );
  }

  Widget _buildLoadingWidget(BuildContext context,
      List<LabScheduleEntity> schedules, menu.NavigationController navC) {
    return Column(
      spacing: 8,
      children: [
        _buildHeader(context, navC),
        Skeletonizer(
            child: ExpandableMyLabScheduleWidget(schedules: schedules)),
      ],
    );
  }

  Widget _buildEmptyWidget(
      BuildContext context, menu.NavigationController navC) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: customErrorEmptyTextWidget(
            context,
            message: 'home'.message('labSchedule.empty'),
          ),
        ),
        TextButton(
          onPressed: () => navC.changeIndex(1),
          child: Text(
            'home'.message('labSchedule.seeScheduleOtherDay'),
            style: context.bodyLargeW(500).copyWith(color: context.primary),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorWidget(BuildContext context, String errorMessage,
      menu.NavigationController navC) {
    return Column(
      children: [
        _buildHeader(context, navC),
        customErrorEmptyTextWidget(context, message: errorMessage),
      ],
    );
  }
}

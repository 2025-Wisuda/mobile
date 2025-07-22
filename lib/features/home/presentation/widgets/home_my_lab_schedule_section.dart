import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/features/menu/menu.dart' show NavigationController;
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

import 'package:mobile/features/lab_schedule/domain/domain.dart'
    show LabScheduleEntity;

class HomeMyLabScheduleSection extends GetView<MyLabScheduleController> {
  const HomeMyLabScheduleSection({super.key});

  @override
  MyLabScheduleController get controller =>
      Get.find<MyLabScheduleController>(tag: 'home');

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final dateString = DateHelper.formatIsoDate(date: DateTime.now());
      controller.fetchList(
        filters: {
          'date': dateString,
        },
      );
    });

    return CustomCardItemWidget(
      mainContent: _buildContent(context),
      backgroundColor: context.surface,
      showBorder: true,
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Obx(() {
      final state = controller.state;
      final schedules = controller.items;
      final errorMessage = controller.stateDescription;

      switch (state) {
        case FetchStateEnum.loading:
          return _buildLoadingWidget(context, schedules);
        case FetchStateEnum.failure:
          return _buildErrorWidget(context, errorMessage);
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('home'.message('labSchedule.title'),
            style: context.bodyLargeW(500)),
        TextButton(
          onPressed: () => Get.find<NavigationController>().changeIndex(1),
          child: Text(
            'home'.message('labSchedule.more'),
            style: context.bodyLargeW(500).copyWith(color: context.primary),
          ),
        ),
      ],
    );
  }

  Widget _buildLoadedWidget(
      BuildContext context, List<LabScheduleEntity> schedules) {
    return Column(
      spacing: 8,
      children: [
        _buildHeader(context),
        ExpandableMyLabScheduleWidget(schedules: schedules),
      ],
    );
  }

  Widget _buildLoadingWidget(
      BuildContext context, List<LabScheduleEntity> schedules) {
    return Column(
      spacing: 8,
      children: [
        _buildHeader(context),
        Skeletonizer(
          child: ExpandableMyLabScheduleWidget(schedules: schedules),
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
            message: 'home'.message('labSchedule.empty'),
          ),
        ),
        TextButton(
          onPressed: () => Get.find<NavigationController>().changeIndex(1),
          child: Text(
            'home'.message('labSchedule.seeScheduleOtherDay'),
            style: context.bodyLargeW(500).copyWith(color: context.primary),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorWidget(BuildContext context, String errorMessage) {
    return Column(
      children: [
        _buildHeader(context),
        customErrorEmptyTextWidget(context, message: errorMessage),
      ],
    );
  }
}

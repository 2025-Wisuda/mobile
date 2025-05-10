import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/features/lab_schedule/lab_schedule.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile/shared/shared.dart';
import 'package:mobile/shared/widgets/text/error_empty_text_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:mobile/features/general/menu/presentation/controllers/menu_controller.dart'
    as menu;

class HomeLabScheduleSectionWidget extends StatelessWidget {
  const HomeLabScheduleSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final labScheduleController = Get.find<LabScheduleController>();
    final schedules =
        labScheduleController.listLabScheduleEntity.value?.data ?? [];
    final isEmpty = schedules.isEmpty;

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.only(
          top: isEmpty ? 16 : 4,
          left: 16,
          right: 16,
          bottom: 16,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: context.color.surface,
              blurRadius: 10,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          border: Border.all(color: context.color.outline, width: 0.5),
        ),
        child: _labScheduleList(context),
      ),
    );
  }

  Widget _labScheduleList(BuildContext context) {
    final labScheduleController = Get.find<LabScheduleController>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      labScheduleController.fetchListLabSchedule(
        scheduleFilterParamsModel: LabScheduleFilterParamsModel(
          page: 1,
          pageSize: 10,
          scheduleDate: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        ),
        stateTarget: labScheduleController.fetchListLabScheduleState,
      );
    });
    return Obx(() {
      final menuController = Get.find<menu.MenuController>();

      final state = labScheduleController.fetchListLabScheduleState.value;
      final schedules =
          labScheduleController.listLabScheduleEntity.value?.data ?? [];

      switch (state) {
        case FetchStateEnum.loading:
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _labScheduleHeader(context),
              Skeletonizer(
                child: LabScheduleListItemWidget(schedules: schedules),
              ),
            ],
          );
        case FetchStateEnum.loaded:
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _labScheduleHeader(context),
              LabScheduleListItemWidget(schedules: schedules),
            ],
          );
        case FetchStateEnum.empty:
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: errorEmptyTextWidget(
                  context,
                  message: 'features.home.labSchedule.empty'.tr(),
                ),
              ),
              TextButton(
                onPressed: () {
                  menuController.pageController.jumpToPage(3);
                },
                child: Text(
                  'features.home.labSchedule.seeScheduleOtherDay'.tr(),
                  style: context.text.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.color.primary,
                  ),
                ),
              ),
            ],
          );
        case FetchStateEnum.error:
          return errorEmptyTextWidget(
            context,
            message: labScheduleController.errorMessage.value,
          );
        default:
          return const SizedBox.shrink();
      }
    });
  }

  Widget _labScheduleHeader(BuildContext context) {
    final menuController = Get.find<menu.MenuController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 8,
      children: [
        Text(
          'features.home.labSchedule.title'.tr(),
          style: context.text.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: () {
            menuController.pageController.jumpToPage(1);
          },
          child: Text(
            'features.home.labSchedule.more'.tr(),
            style: context.text.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
              color: context.color.primary,
            ),
          ),
        ),
      ],
    );
  }
}

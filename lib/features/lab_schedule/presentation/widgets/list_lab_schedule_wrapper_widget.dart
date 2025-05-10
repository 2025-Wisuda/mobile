import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/features/lab_schedule/lab_schedule.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:easy_localization/easy_localization.dart'
    show DateFormat, StringTranslateExtension;
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile/shared/helpers/context_extension_helper.dart';
import 'package:mobile/shared/widgets/text/error_empty_text_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListLabScheduleWrapperWidget extends StatelessWidget {
  const ListLabScheduleWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
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

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),

            child: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 16,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: context.color.surface,
                      borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
                      border: Border(
                        top: BorderSide(color: context.color.outline, width: 1),
                        left: BorderSide(
                          color: context.color.outline,
                          width: 1,
                        ),
                        right: BorderSide(
                          color: context.color.outline,
                          width: 1,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: context.color.shadow,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        LabScheduleCalendarWidget(),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 16,
                            right: 16,
                            bottom: 16,
                          ),
                          child: calendarStatusLegendWidget(
                            context,
                            label:
                                'features.schedule.lab.legend.status.selectedDate'
                                    .tr(),
                            color: context.color.primary,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //                   Center(
                  //   child: SizedBox(
                  //     height: 32,
                  //     width: 32,
                  //     child: Divider(color: context.color.outline),
                  //   ),
                  // ),
                  Obx(() {
                    final state =
                        labScheduleController.fetchListLabScheduleState.value;
                    final schedules =
                        labScheduleController
                            .listLabScheduleEntity
                            .value
                            ?.data ??
                        [];
                    switch (state) {
                      case FetchStateEnum.loading:
                        return Skeletonizer(
                          child: LabScheduleListItemWidget(
                            schedules: schedules,
                          ),
                        );
                      case FetchStateEnum.loaded:
                        return LabScheduleListItemWidget(schedules: schedules);
                      case FetchStateEnum.empty:
                        return errorEmptyTextWidget(
                          context,
                          message:
                              'features.schedule.lab.fetchListLabSchedule.empty'
                                  .tr(),
                        );
                      case FetchStateEnum.error:
                        return errorEmptyTextWidget(
                          context,
                          message: labScheduleController.errorMessage.value,
                        );
                      default:
                        return const SizedBox.shrink();
                    }
                  }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

// Project imports:
import 'package:mobile/core/core.dart';
import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/features/lab_schedule/presentation/presentation.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

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
        final padding = EdgeInsets.fromLTRB(16, 8, 16, 16);
        final label = i18n.tr(
          'features.schedule.lab.legend.status.selectedDate',
        );
        final borderSide = BorderSide(color: context.outline, width: 1);

        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Padding(
              padding: padding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 16,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: context.surface,
                      borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
                      border: Border(
                        top: borderSide,
                        left: borderSide,
                        right: borderSide,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: context.shadow,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        LabScheduleCalendarWidget(),
                        Padding(
                          padding: padding,
                          child: calendarStatusLegendWidget(
                            context,
                            label: label,
                            color: context.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Obx(() {
                    final state =
                        labScheduleController.fetchListLabScheduleState.value;
                    final schedules =
                        labScheduleController
                            .listLabScheduleEntity
                            .value
                            ?.data ??
                        [];
                    final errorMessage =
                        labScheduleController.errorMessage.value;
                    final emptyMessage = i18n.tr(
                      'features.schedule.lab.searchLabSchedule.empty',
                    );
                    final loadedWidget = LabScheduleListItemWidget(
                      schedules: schedules,
                    );
                    final loadingWidget = Skeletonizer(child: loadedWidget);
                    final emptyWidget = errorEmptyTextWidget(
                      context,
                      message: emptyMessage,
                    );
                    final errorWidget = errorEmptyTextWidget(
                      context,
                      message: errorMessage,
                    );

                    return state.toWidget(
                      loadingWidget: loadingWidget,
                      loadedWidget: loadedWidget,
                      emptyWidget: emptyWidget,
                      errorWidget: errorWidget,
                      initialWidget: loadingWidget,
                    );
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

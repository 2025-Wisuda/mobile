// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/lab_schedule/lab_schedule.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SearchLabScheduleWrapperWidget extends StatelessWidget {
  const SearchLabScheduleWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final labScheduleController = Get.find<LabScheduleController>();

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Obx(() {
                final state =
                    labScheduleController.searchLabScheduleState.value;
                final schedules =
                    labScheduleController.listLabScheduleEntity.value?.data ??
                    [];
                final errorMessage = labScheduleController.errorMessage.value;
                final emptyMessage = i18n.tr(
                  'features.schedule.lab.fetchLabScheduleDetail.empty',
                );
                final loadedWidget = LabScheduleListItemWidget(
                  schedules: schedules,
                );
                final emptyWidget = errorEmptyTextWidget(
                  context,
                  message: emptyMessage,
                );
                final errorWidget = errorEmptyTextWidget(
                  context,
                  message: errorMessage,
                );

                return state.toWidget(
                  loadingWidget: _loadingStateWidget(context),
                  loadedWidget: loadedWidget,
                  emptyWidget: emptyWidget,
                  errorWidget: errorWidget,
                  initialWidget: SizedBox.shrink(),
                );
              }),
            ),
          ),
        );
      },
    );
  }

  Widget _loadingStateWidget(BuildContext context) {
    final text = i18n.tr('features.schedule.lab.searchLabSchedule.loading');
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 4,
        children: [
          Text(text, style: context.bodyMediumW(500)),
          customLoadingWidget,
        ],
      ),
    );
  }
}

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

// Project imports:
import 'package:mobile/features/lab_schedule/lab_schedule.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/widgets/text/error_empty_text_widget.dart';

class DetailLabScheduleWrapperWidget extends StatelessWidget {
  final String labScheduleId;
  const DetailLabScheduleWrapperWidget({
    super.key,
    required this.labScheduleId,
  });

  @override
  Widget build(BuildContext context) {
    final labScheduleController = Get.find<LabScheduleController>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      labScheduleController.fetchLabScheduleDetail(
        labScheduleId: labScheduleId,
      );
    });
    return Obx(() {
      final state = labScheduleController.fetchLabScheduleDetailState.value;
      final schedule = labScheduleController.labScheduleEntity.value;
      final errorMessage = labScheduleController.errorMessage.value;
      final emptyMessage = i18n.tr(
        'features.schedule.lab.fetchLabScheduleDetail.empty',
      );
      final loadedWidget =
          schedule != null
              ? LabScheduleDetailWidget(schedule: schedule)
              : const SizedBox.shrink();
      final loadingWidget = Skeletonizer(child: loadedWidget);
      final emptyWidget = errorEmptyTextWidget(context, message: emptyMessage);
      final errorWidget = errorEmptyTextWidget(context, message: errorMessage);

      return state.toWidget(
        loadingWidget: loadingWidget,
        loadedWidget: loadedWidget,
        emptyWidget: emptyWidget,
        errorWidget: errorWidget,
        initialWidget: loadingWidget,
      );
    }).p(16);
  }
}

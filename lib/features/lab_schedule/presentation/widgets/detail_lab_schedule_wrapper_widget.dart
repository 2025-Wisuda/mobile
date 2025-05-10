import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/features/lab_schedule/lab_schedule.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:easy_localization/easy_localization.dart'
    show StringTranslateExtension;
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile/shared/widgets/text/error_empty_text_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
              child: Obx(() {
                final state =
                    labScheduleController.fetchLabScheduleDetailState.value;
                final schedule = labScheduleController.labScheduleEntity.value;
                switch (state) {
                  case FetchStateEnum.loading:
                    return Skeletonizer(
                      child: LabScheduleDetailWidget(schedule: schedule!),
                    );
                  case FetchStateEnum.loaded:
                    return LabScheduleDetailWidget(schedule: schedule!);
                  case FetchStateEnum.empty:
                    return errorEmptyTextWidget(
                      context,
                      message:
                          'features.schedule.lab.fetchLabScheduleDetail.empty'
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
            ),
          ),
        );
      },
    );
  }
}

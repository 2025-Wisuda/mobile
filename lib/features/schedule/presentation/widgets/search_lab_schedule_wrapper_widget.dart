import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/features/schedule/schedule.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:easy_localization/easy_localization.dart'
    show StringTranslateExtension;
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/loading/loading.dart';
import 'package:mobile/shared/widgets/text/error_empty_text_widget.dart';

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
              padding: const EdgeInsets.only(
                top: 8,
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: Obx(() {
                final state =
                    labScheduleController.searchLabScheduleState.value;
                final schedules =
                    labScheduleController.listLabScheduleEntity.value?.data ??
                    [];

                switch (state) {
                  case FetchStateEnum.loading:
                    return _loadingStateWidget(context);
                  case FetchStateEnum.loaded:
                    return LabScheduleListItemWidget(schedules: schedules);
                  case FetchStateEnum.empty:
                    return errorEmptyTextWidget(
                      context,
                      message:
                          'features.schedule.lab.searchLabSchedule.empty'.tr(),
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

  Widget _loadingStateWidget(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 4,
        children: [
          Text(
            'features.schedule.lab.searchLabSchedule.loading'.tr(),
            style: context.text.bodyMedium,
          ),
          customLoadingWidget,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/lab_schedule_controller.dart';
import 'package:mobile/shared/widgets/app_bar/custom_app_bar_widget.dart';
import 'package:mobile/shared/widgets/button/custom_button_background_widget.dart';

class DetailLabScheduleAppBarWidget extends StatelessWidget {
  const DetailLabScheduleAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final labScheduleController = Get.find<LabScheduleController>();

    return CustomUserAppBarWidget(
      showTrailing: false,
      showQrButton: false,
      showSearchButton: false,
      backButton: CustomButtonBackgroundWidget(
        iconButton: Icon(Icons.close),
        onPressed: () {
          Get.back();
          labScheduleController.fetchLabScheduleDetailState.value =
              FetchStateEnum.initial;
        },
        backgroundColor: WidgetStateProperty.all<Color?>(Colors.transparent),
      ),
      backButtonBorderColor: Colors.transparent,
    );
  }
}

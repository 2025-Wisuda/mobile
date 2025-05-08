import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/features/schedule/presentation/controllers/lab_schedule_controller.dart';
import 'package:mobile/features/schedule/presentation/widgets/search_lab_schedule_form_widget.dart';
import 'package:mobile/shared/shared.dart';
import 'package:mobile/shared/widgets/app_bar/custom_app_bar_widget.dart';

class SearchLabScheduleAppBarWidget extends StatelessWidget {
  const SearchLabScheduleAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final labScheduleController = Get.find<LabScheduleController>();

    return CustomUserAppBarWidget(
      onTapBackButton: () {
        Get.back();
        labScheduleController.clearSearch();
        labScheduleController.searchLabScheduleFocusNode.value.unfocus();
        labScheduleController.searchLabScheduleState.value =
            FetchStateEnum.initial;
      },

      backButtonBorderColor: context.color.outline,
      showSearchButton: false,
      backgroundColor: Colors.transparent,
      iconBackgroundColor: WidgetStateProperty.all<Color?>(Colors.transparent),
      actionButton: Container(
        constraints: BoxConstraints(maxWidth: screenWidth * 0.9 - 60),
        child: Align(
          alignment: Alignment.center,
          child: SearchLabScheduleFormWidget(),
        ),
      ),
    );
  }
}

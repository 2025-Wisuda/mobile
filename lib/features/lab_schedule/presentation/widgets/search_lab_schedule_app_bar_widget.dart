// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/core.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/search_lab_schedule_form_widget.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/app_bar/custom_app_bar_widget.dart';

class SearchLabScheduleAppBarWidget extends StatelessWidget {
  const SearchLabScheduleAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = context.sWidth;
    final labScheduleController = Get.find<LabScheduleController>();

    return CustomUserAppBarWidget(
      onTapBackButton: () {
        Get.back();
        labScheduleController.clearSearch();
        labScheduleController.searchLabScheduleFocusNode.value.unfocus();
        labScheduleController.searchLabScheduleState.value =
            FetchStateEnum.initial;
      },
      backButtonBorderColor: context.outline,
      showSearchButton: false,
      backgroundColor: Colors.transparent,
      iconBackgroundColor: WidgetStateProperty.all<Color?>(Colors.transparent),
      actionButton: Container(
        constraints: BoxConstraints(maxWidth: width * 0.9 - 60),
        child: Align(
          alignment: Alignment.center,
          child: SearchLabScheduleFormWidget(),
        ),
      ),
    );
  }
}

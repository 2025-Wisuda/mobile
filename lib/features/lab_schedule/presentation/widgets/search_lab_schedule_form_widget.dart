// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';

// Project imports:
import 'package:mobile/core/core.dart';
import 'package:mobile/features/lab_schedule/lab_schedule.dart';
import 'package:mobile/shared/helpers/extensions/theme_color_extension_helper.dart';
import 'package:mobile/shared/widgets/form/custom_search_form_widget.dart';
import 'package:mobile/shared/widgets/icon/custom_image_icon_widget.dart';

class SearchLabScheduleFormWidget extends StatelessWidget {
  const SearchLabScheduleFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final labScheduleController = Get.find<LabScheduleController>();
    final controller = labScheduleController.searchLabScheduleController.value;
    final focusNode = labScheduleController.searchLabScheduleFocusNode.value;
    final state = labScheduleController.searchLabScheduleState;
    final hintText = i18n.tr(
      'features.schedule.lab.searchLabSchedule.placeholder',
    );
    return CustomSearchFormWidget(
      borderColor: context.outline,
      borderRadius: 60,
      autoFocus: true,
      controller: controller,
      focusNode: focusNode,
      hintText: hintText,
      keyboardType: TextInputType.text,
      leadingIcon: customImageIconWidget(
        imagePath: IconConstant.searchOutlineIcon,
      ),
      onFieldSubmitted: (value) {
        labScheduleController.fetchListLabSchedule(
          scheduleFilterParamsModel: LabScheduleFilterParamsModel(
            page: 1,
            pageSize: 10,
            search: value,
          ),
          stateTarget: state,
        );

        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (context.mounted) {
            labScheduleController.toggleSearchLabSchedule();
          }
        });
      },
      trailingIcon: [
        GestureDetector(
          onTap: () {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (context.mounted) {
                labScheduleController.clearSearch();
                labScheduleController.toggleSearchLabSchedule();
              }
            });
          },
          child: Icon(
            Icons.close,
            color: context.onSurface.withValues(alpha: 0.6),
          ),
        ),
      ],
    );
  }
}

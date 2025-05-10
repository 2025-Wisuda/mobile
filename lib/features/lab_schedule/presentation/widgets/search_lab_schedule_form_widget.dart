import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/features/lab_schedule/lab_schedule.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/form/custom_search_form_widget.dart';
import 'package:mobile/shared/widgets/icon/custom_image_icon_widget.dart';

class SearchLabScheduleFormWidget extends StatelessWidget {
  const SearchLabScheduleFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final labScheduleController = Get.find<LabScheduleController>();

    return CustomSearchFormWidget(
      borderColor: context.color.outline,
      borderRadius: 60,
      autoFocus: true,
      controller: labScheduleController.searchLabScheduleController.value,
      focusNode: labScheduleController.searchLabScheduleFocusNode.value,
      hintText: 'features.schedule.lab.searchLabSchedule.placeholder'.tr(),
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
          stateTarget: labScheduleController.searchLabScheduleState,
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
            // ignore: deprecated_member_use
            color: context.color.onSurface.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}

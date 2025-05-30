// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';
import 'package:mobile/shared/helpers/date_helper.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

class FilterCourseBottomSheet extends StatelessWidget {
  const FilterCourseBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    final filter = i18n.tr('general.filter');
    final startDate = i18n.tr('features.course.form.label.startDate');
    final endDate = i18n.tr('features.course.form.label.endDate');
    final apply = i18n.tr('general.button.apply');
    final reset = i18n.tr('general.button.reset');
    final notSelected = i18n.tr('general.notSelected');
    final state = courseController.fetchListCourseState;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Text(i18n.tr('general.filter'), style: context.headlineSmallW(700)),
        ExpansionTile(
          title: Text(filter, style: context.bodyMediumW(500)),
          children: [
            ListTile(
              title: Text(startDate),
              trailing: Obx(
                () => Text(
                  courseController.selectedStartDateFilter.value != null
                      ? DateHelper.formatFullDate(
                        date: courseController.selectedStartDateFilter.value,
                      )
                      : i18n.tr("general.notSelected"),
                  style: context.text.bodySmall,
                ),
              ),
              onTap: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate:
                      courseController.selectedStartDateFilter.value ??
                      DateTime.now(),
                  firstDate: DateTime(2025),
                  lastDate: DateTime(2100),
                );
                if (selectedDate != null) {
                  courseController.selectedStartDateFilter.value = selectedDate;
                }
              },
            ),
            ListTile(
              title: Text(endDate),
              trailing: Obx(
                () => Text(
                  courseController.selectedEndDateFilter.value != null
                      ? DateHelper.formatFullDate(
                        date: courseController.selectedEndDateFilter.value,
                      )
                      : notSelected,
                  style: context.text.bodySmall,
                ),
              ),
              onTap: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate:
                      courseController.selectedEndDateFilter.value ??
                      DateTime.now(),
                  firstDate: DateTime(2025),
                  lastDate: DateTime(2100),
                );
                if (selectedDate != null) {
                  courseController.selectedEndDateFilter.value = selectedDate;
                }
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(
              onPressed: () {
                courseController.clearFilters(stateTarget: state);
                Get.back();
              },
              child: Text(reset, style: context.bodyMediumW(500)),
            ),
            ElevatedButton(
              onPressed: () {
                courseController.applyFilters(
                  startDate: courseController.selectedStartDateFilter.value,
                  endDate: courseController.selectedEndDateFilter.value,
                  stateTarget: state,
                );
                Get.back();
              },
              style: ElevatedButton.styleFrom(backgroundColor: context.primary),
              child: Text(
                apply,
                style: context
                    .bodyMediumW(500)
                    .copyWith(color: context.onPrimary),
              ),
            ),
          ],
        ),
      ],
    ).p(16);
  }
}

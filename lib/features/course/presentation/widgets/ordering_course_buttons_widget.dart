// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

class OrderingCourseButtonsWidget extends StatelessWidget {
  const OrderingCourseButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();

    return Row(
      children: [
        Obx(() {
          final isStartDateAsc =
              courseController.selectedOrdering.value == "start_date";
          final isStartDateDesc =
              courseController.selectedOrdering.value == "-start_date";

          return OutlinedButton.icon(
            onPressed: () {
              courseController.applyFilters(
                ordering: isStartDateAsc ? "-start_date" : "start_date",
                startDate: courseController.selectedStartDateFilter.value,
                endDate: courseController.selectedEndDateFilter.value,
                stateTarget: courseController.fetchListCourseState,
              );
            },
            icon: Icon(
              isStartDateAsc
                  ? Icons.arrow_upward
                  : isStartDateDesc
                  ? Icons.arrow_downward
                  : Icons.sort,
              color: context.primary,
            ),
            label: Text(
              i18n.tr("general.start"),
              style: context.text.bodyMedium?.copyWith(color: context.primary),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: context.primary),
              backgroundColor: Colors.transparent,
            ),
          );
        }),
        const SizedBox(width: 8),
        Obx(() {
          final isEndDateAsc =
              courseController.selectedOrdering.value == "end_date";
          final isEndDateDesc =
              courseController.selectedOrdering.value == "-end_date";

          return OutlinedButton.icon(
            onPressed: () {
              courseController.applyFilters(
                ordering: isEndDateAsc ? "-end_date" : "end_date",
                startDate: courseController.selectedStartDateFilter.value,
                endDate: courseController.selectedEndDateFilter.value,
                stateTarget: courseController.fetchListCourseState,
              );
            },
            icon: Icon(
              isEndDateAsc
                  ? Icons.arrow_upward
                  : isEndDateDesc
                  ? Icons.arrow_downward
                  : Icons.sort,
              color: context.primary,
            ),
            label: Text(
              i18n.tr("general.end"),
              style: context.text.bodyMedium?.copyWith(color: context.primary),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: context.primary),
              backgroundColor: Colors.transparent,
            ),
          );
        }),
      ],
    );
  }
}

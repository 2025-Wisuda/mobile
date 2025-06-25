import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';

class CourseOrderingWidget extends StatelessWidget {
  final CourseWrapperController c;
  const CourseOrderingWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(() {
          final ordering = c.selectedOrdering.value;
          final isAsc = ordering == "start_date";
          final isDesc = ordering == "-start_date";
          final isSelected = isAsc || isDesc;
          final color = isSelected
              ? context.primary
              : context.onSurface.withValues(alpha: 0.8);
          final weight = isSelected ? 500 : 400;

          return OutlinedButton.icon(
            onPressed: () {
              final newOrdering = isAsc ? "-start_date" : "start_date";
              c.applyFilters(ordering: newOrdering);
            },
            icon: Icon(
              isAsc
                  ? Icons.arrow_upward
                  : isDesc
                      ? Icons.arrow_downward
                      : Icons.sort,
              color: color,
            ),
            label: Text(
              'general'.message('start'),
              style: context.bodyMediumW(weight).copyWith(color: color),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: color),
              backgroundColor: Colors.transparent,
            ),
          );
        }),
        const SizedBox(width: 8),
        Obx(() {
          final ordering = c.selectedOrdering.value;
          final isAsc = ordering == "end_date";
          final isDesc = ordering == "-end_date";
          final isSelected = isAsc || isDesc;
          final color = isSelected
              ? context.primary
              : context.onSurface.withValues(alpha: 0.8);
          final weight = isSelected ? 500 : 400;

          return OutlinedButton.icon(
            onPressed: () {
              final newOrdering = isAsc ? "-end_date" : "end_date";
              c.applyFilters(ordering: newOrdering);
            },
            icon: Icon(
              isAsc
                  ? Icons.arrow_upward
                  : isDesc
                      ? Icons.arrow_downward
                      : Icons.sort,
              color: color,
            ),
            label: Text(
              'general'.message('end'),
              style: context.bodyMediumW(weight).copyWith(color: color),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: color),
              backgroundColor: Colors.transparent,
            ),
          );
        }),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';

class FilterCourseWidget extends StatelessWidget {
  final CourseWrapperController c;
  const FilterCourseWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          builder: (context) => FilterCourseBottomSheet(c: c),
        );
      },
      icon: Icon(
        Icons.filter_alt,
        size: 20,
        color: context.surface,
      ),
      label: Text(
        'general'.message('filter'),
        style: context.bodyMediumW(500).copyWith(color: context.surface),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: context.primary.withValues(alpha: 0.8),
        foregroundColor: context.surface,
      ),
    );
  }
}

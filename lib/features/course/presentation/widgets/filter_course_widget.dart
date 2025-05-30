// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/features/course/presentation/widgets/filter_course_bottom_sheet_widget.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

// Package imports:

class FilterCourseWidget extends StatelessWidget {
  const FilterCourseWidget({super.key});

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
          builder: (context) => const FilterCourseBottomSheet(),
        );
      },
      icon: Icon(Icons.filter_alt, color: context.onPrimary),
      label: Text(
        i18n.tr('general.filter'),
        style: context.bodyMediumW(500).copyWith(color: context.onPrimary),
      ),
      style: ElevatedButton.styleFrom(backgroundColor: context.primary),
    );
  }
}

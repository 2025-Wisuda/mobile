import 'package:flutter/material.dart';

import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseSessionAppBarWidget extends StatelessWidget {
  final String courseId;
  final String courseSessionId;

  const DetailCourseSessionAppBarWidget({
    super.key,
    required this.courseId,
    required this.courseSessionId,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWithBorder(
      title: 'course'.message('detailCourseSession'),
      actions: [
        CourseSessionActionsMenuWidget(),
      ],
    );
  }
}

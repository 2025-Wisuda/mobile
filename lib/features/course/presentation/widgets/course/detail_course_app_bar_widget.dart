import 'package:flutter/material.dart';

import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseAppBarWidget extends StatelessWidget {
  const DetailCourseAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWithBorder(
      title: 'course'.message('detailCourse'),
      actions: [
        CourseActionsMenuWidget(),
      ],
    );
  }
}

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/course/presentation/widgets/detail_course_wrapper_widget.dart';

import 'package:mobile/features/course/presentation/widgets/detail_course_app_bar_widget.dart'
    show DetailCourseAppBarWidget;

// Project imports:

class DetailCourseScreen extends StatelessWidget {
  final String courseId;
  const DetailCourseScreen({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(25),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DetailCourseAppBarWidget(),
          ),
        ),
      ),
      body: DetailCourseWrapperWidget(courseId: courseId),
    );
  }
}

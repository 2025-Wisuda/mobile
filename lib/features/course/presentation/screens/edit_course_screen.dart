// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/course/presentation/widgets/widget.dart';

class EditCourseScreen extends StatelessWidget {
  final String courseId;
  const EditCourseScreen({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(25),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: EditCourseAppBarWidget(),
          ),
        ),
      ),
      body: EditCourseWrapperWidget(courseId: courseId),
    );
  }
}

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/course/presentation/widgets/all_course_app_bar_widget.dart';
import 'package:mobile/features/course/presentation/widgets/all_course_wrapper_widget.dart';

class AllCourseScreen extends StatelessWidget {
  const AllCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(25),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: AllCourseAppBarWidget(),
          ),
        ),
      ),
      body: AllCourseWrapperWidget(),
    );
  }
}

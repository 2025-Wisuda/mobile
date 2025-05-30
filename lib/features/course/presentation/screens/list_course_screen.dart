// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/course/presentation/widgets/list_course_app_bar_widget.dart';
import 'package:mobile/features/course/presentation/widgets/list_course_wrapper_widget.dart';

class ListCourseScreen extends StatelessWidget {
  const ListCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(25),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListCourseAppBarWidget(),
          ),
        ),
      ),
      body: ListCourseWrapperWidget(),
    );
  }
}

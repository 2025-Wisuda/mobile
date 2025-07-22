import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SearchCourseFormWidget extends StatelessWidget {
  const SearchCourseFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CourseWrapperController>();
    return Obx(() {
      final isMyCourse = controller.isMyCourse.value;
      final activeController = isMyCourse
          ? Get.find<MyCourseController>()
          : Get.find<ListCourseController>();

      final key = '${activeController.baseStateKey}SearchController';

      return SizedBox(
        height: 44,
        child: CustomSearchFormWidget(
          autoFocus: true,
          controller: activeController.getController(key),
          focusNode: activeController.getFocusNode(key),
          hintText: 'course'.message('searchCourse.placeholder'),
          keyboardType: TextInputType.text,
          borderRadius: 24,
          leadingIcon: Icon(
            Icons.search,
            color: context.onSurface.withValues(alpha: 0.8),
          ),
          onChanged: (value) {
            activeController.search(value);
          },
          trailingIcon: [
            IconButton(
              onPressed: () {
                activeController.resetState();
                activeController.clearForm();

                controller.onSearchChanged();
              },
              icon: Icon(
                Icons.close,
                color: context.onSurface.withValues(alpha: 0.8),
              ),
            )
          ],
        ),
      );
    });
  }
}

// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';

// Project imports:
import 'package:mobile/core/core.dart';
import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SearchCourseFormWidget extends StatelessWidget {
  const SearchCourseFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();

    return CustomSearchFormWidget(
      borderColor: context.outline,
      borderRadius: 60,
      autoFocus: false,
      controller: courseController.searchCourseController.value,
      focusNode: courseController.searchCourseFocusNode.value,
      hintText: i18n.tr('features.course.searchCourse.placeholder'),
      keyboardType: TextInputType.text,
      leadingIcon: customImageIconWidget(
        imagePath: IconConstant.searchOutlineIcon,
      ),
      onFieldSubmitted: (value) {
        courseController.fetchListCourse(
          filterParams: CourseFilterParamsModel(
            page: 1,
            pageSize: 10,
            search: value,
          ),
          stateTarget: courseController.fetchListCourseState,
        );

        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (context.mounted) {
            courseController.toggleSearchCourse();
          }
        });
      },
      trailingIcon: [
        GestureDetector(
          onTap: () {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (context.mounted) {
                courseController.clearSearchCourse();
                courseController.toggleSearchCourse();
              }
            });
          },
          child: Icon(
            Icons.close,
            color: context.onSurface.withValues(alpha: 0.6),
          ),
        ),
      ],
      backgroundColor: context.shadow,
    );
  }
}

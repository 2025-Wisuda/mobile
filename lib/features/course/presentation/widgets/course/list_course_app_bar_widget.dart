import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/course_wrapper_controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListCourseAppBarWidget extends StatelessWidget {
  const ListCourseAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTertiaryAppBarWidget(
        pinned: true,
        toolbarHeight: 76,
        title: Row(
          children: [
            Flexible(child: SearchCourseFormWidget()),
            const SizedBox(width: 12),
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: context.primary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: context.primary.withValues(alpha: 0.3),
                  width: 0.5,
                ),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16)),
                      ),
                      builder: (context) => FilterCourseBottomSheet(
                          c: Get.find<CourseWrapperController>()),
                    );
                  },
                  icon: Icon(
                    Icons.filter_alt,
                    size: 20,
                    color: context.primary,
                  ),
                  style: IconButton.styleFrom(
                    foregroundColor: context.onSurface,
                    backgroundColor: Colors.transparent,
                    overlayColor: context.primary.withValues(alpha: 0.1),
                  ),
                ),
              ),
            )
          ],
        ),
        leading: IconButton.outlined(
          onPressed: () => Get.back(),
          icon: Icon(Icons.chevron_left, size: 24),
          style: IconButton.styleFrom(
            side: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
        ));
  }
}

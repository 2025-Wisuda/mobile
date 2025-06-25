import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class MyCourseAppBarWidget extends StatelessWidget {
  final CourseWrapperController wrapperC;
  final MyCourseController myC;
  const MyCourseAppBarWidget(
      {super.key, required this.wrapperC, required this.myC});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return CustomTertiaryAppBarWidget(
        centerTitle: false,
        leading: IconButton.outlined(
          alignment: Alignment.centerLeft,
          onPressed: () => Get.back(),
          icon: Icon(Icons.chevron_left, size: 24),
        ),
        pinned: true,
        toolbarHeight: 56,
        titleText: 'myCourse'.menu(),
        actions: [
          CustomGridOrListLayoutWidget(
            isGridView: myC.isGridView.value,
            onPressed: () => myC.toggleView(),
          ),
          if (wrapperC.canShowActionsMenu) ...[
            const SizedBox(width: 12),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Get.toNamed(AppRoute.createCourse);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: context.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.add_rounded,
                    size: 20,
                    color: context.onPrimary,
                  ),
                ),
              ),
            ),
          ],
          const SizedBox(width: 16)
        ],
      );
    });
  }
}

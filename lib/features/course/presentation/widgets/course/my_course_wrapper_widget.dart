import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class MyCourseWrapperWidget extends StatelessWidget {
  final MyCourseController myC;
  final CourseWrapperController wrapperC;
  const MyCourseWrapperWidget(
      {super.key, required this.myC, required this.wrapperC});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          spacing: 8,
          children: [
            CustomSearchNavigationWidget(
              hintText: 'course'.message('searchCourse.placeholder'),
              onTap: () {
                Get.toNamed(
                  AppRoute.course,
                );
                Get.find<ListCourseController>().fetchCourseList();
              },
              leading: const Icon(Icons.search),
            ),
            Obx(() {
              final state = myC.state;
              final courses = myC.items;

              return customFetchStateHandler(
                context: context,
                state: state,
                feature: 'course',
                customErrorMessage: myC.errorMessage,
                customIcon: Icons.school_outlined,
                customSubtitle: 'course'.message('empty.myCourse'),
                onSuccess: () => _buildLoadedWidget(context, myC, courses),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadedWidget(
      BuildContext context, MyCourseController controller, List courses) {
    return Column(
      children: [
        Obx(() => controller.isGridView.value
            ? GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.75,
                ),
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  return CourseGridItemWidget(course: courses[index]);
                },
              )
            : ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  return CourseItemWidget(course: courses[index]);
                },
                separatorBuilder: (_, __) => const SizedBox(height: 8),
              )),
        Obx(() {
          if (controller.isLoadingMore) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CustomPrimaryLoadingWidget(),
              ),
            );
          }
          return const SizedBox.shrink();
        }),
      ],
    );
  }
}

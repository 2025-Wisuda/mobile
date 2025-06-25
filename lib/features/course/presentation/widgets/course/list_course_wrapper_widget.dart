import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListCourseWrapperWidget extends StatelessWidget {
  final ListCourseController c;
  const ListCourseWrapperWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Row(
              spacing: 12,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(() => CustomGridOrListLayoutWidget(
                      isGridView: c.isGridView.value,
                      onPressed: () => c.toggleView(),
                    )),
                Obx(() => Text(
                      c.isGridView.value
                          ? 'general'.message('switchToList')
                          : 'general'.message('switchToGrid'),
                      style: context.bodyMediumW(500),
                    )),
                // Flexible(child: CustomDashedLineWidget(color: context.outline)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Obx(() {
              final state = c.state;
              final courses = c.items;
              final searchQuery = c.getControllerValue('search');

              return customFetchStateHandler(
                context: context,
                state: state,
                feature: 'course',
                customErrorMessage: c.errorMessage,
                customIcon: _getEmptyIcon(searchQuery),
                customSubtitle: _getEmptySubtitle(searchQuery),
                onSuccess: () => _buildLoadedWidget(context, c, courses),
              );
            }),
          ),
        ],
      ),
    );
  }

  IconData? _getEmptyIcon(String searchQuery) {
    if (searchQuery.isNotEmpty) return Icons.search_off_rounded;
    if (Get.currentRoute.contains('search')) return Icons.search_outlined;
    return Icons.school_outlined;
  }

  String? _getEmptySubtitle(String searchQuery) {
    if (searchQuery.isNotEmpty) {
      return 'course'.message('searchTryDifferentKeywords');
    }
    if (Get.currentRoute.contains('search')) {
      return 'course'.message('searchInitialSubtitle');
    }
    return 'course'.message('empty.allCourse');
  }

  Widget _buildLoadedWidget(
      BuildContext context, ListCourseController controller, List courses) {
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

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseSessionAttendanceScreen extends StatefulWidget {
  const CourseSessionAttendanceScreen({
    super.key,
  });

  @override
  State<CourseSessionAttendanceScreen> createState() =>
      _CourseSessionAttendanceListScreenState();
}

class _CourseSessionAttendanceListScreenState
    extends State<CourseSessionAttendanceScreen> {
  late final ScrollController _scrollController;
  late final ListCourseSessionAttendanceController controller;
  late final String courseId;
  late final String sessionId;

  @override
  void initState() {
    super.initState();
    controller = Get.find<ListCourseSessionAttendanceController>();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);

    final args = Get.arguments;
    courseId = args['courseId'];
    sessionId = args['courseSessionId'];

    controller.setCourseId(courseId);
    controller.setSessionId(sessionId);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(0);
        controller.fetchList();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      controller.loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        // No special logic needed, just allow pop
      },
      child: Scaffold(
        body: CustomRefreshWrapperWidget(
          onRefresh: () => controller.fetchList(),
          child: Scrollbar(
            controller: _scrollController,
            child: CustomScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              slivers: [
                _buildAppBar(context),
                ListCourseSessionAttendanceWrapperWidget(
                  controller: controller,
                  onMarkAttendance: (result) {
                    if (result != null && result['shouldRefresh'] == true) {
                      controller.fetchList();
                    }
                    if (result != null &&
                        result['successMessage'] != null &&
                        result['successMessage'].isNotEmpty) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(result['successMessage']),
                            backgroundColor: context.tertiary,
                            duration: const Duration(seconds: 3),
                          ),
                        );
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomTertiaryAppBarWidget(
      titleText: 'courseSessionAttendance'.menu(),
      pinned: true,
      toolbarHeight: 56,
      actions: [
        Obx(() {
          final hasFilters = controller.hasFiltersApplied;
          return IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                enableDrag: true,
                isDismissible: true,
                useSafeArea: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                builder: (context) =>
                    FilterCourseSessionAttendanceBottomSheetWidget(
                        controller: controller),
              );
            },
            icon: Icon(
              hasFilters ? Icons.filter_list_off : Icons.filter_list,
              color: hasFilters ? context.primary : context.onSurface,
            ),
            style: IconButton.styleFrom(
              foregroundColor: context.onSurface,
              overlayColor: context.primary.withValues(alpha: 0.1),
            ),
          );
        }),
      ],
    );
  }
}

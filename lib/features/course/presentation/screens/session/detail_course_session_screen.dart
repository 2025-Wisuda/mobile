import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseSessionScreen extends StatefulWidget {
  final String courseId;
  final String courseSessionId;

  const DetailCourseSessionScreen({
    super.key,
    required this.courseId,
    required this.courseSessionId,
  });

  @override
  State<DetailCourseSessionScreen> createState() =>
      _DetailCourseSessionScreenState();
}

class _DetailCourseSessionScreenState extends State<DetailCourseSessionScreen> {
  late final ScrollController _scrollController;
  late final DetailCourseSessionController controller;
  late final MyCourseSessionAttendanceController attendanceController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    controller = Get.find<DetailCourseSessionController>();
    attendanceController = Get.find<MyCourseSessionAttendanceController>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        controller.fetchDetail(
          [widget.courseId, widget.courseSessionId],
        );
        attendanceController.fetchDetail(
          {
            'courseId': widget.courseId,
            'sessionId': widget.courseSessionId,
          },
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: _buildAppBar(context),
      ),
      body: CustomRefreshWrapperWidget(
        onRefresh: () =>
            controller.fetchDetail([widget.courseId, widget.courseSessionId]),
        child: Scrollbar(
          controller: _scrollController,
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DetailCourseSessionWrapperWidget(
                courseId: widget.courseId,
                courseSessionId: widget.courseSessionId,
                controller: controller,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomAppBarWithBorder(
      title: 'course'.message('detailCourseSession'),
      actions: [
        _buildActionsMenu(context),
      ],
    );
  }

  Widget _buildActionsMenu(BuildContext context) {
    final controller = Get.find<CourseSessionWrapperController>();

    return Obx(() {
      if (!controller.canShowActionsMenu) {
        return const SizedBox.shrink();
      }

      return CustomMenuActionsWidget(
        type: MenuActionType.courseSession,
        entityId: controller.courseSessionId,
        title: controller.courseSessionTitle,
        isTeachingAssistant: controller.isTeachingAssistant,
        isOwner: controller.isCourseSessionOwner,
        onUpdate:
            (controller.isTeachingAssistant || controller.isCourseSessionOwner)
                ? () => _handleUpdateCourseSession(controller)
                : null,
        onDelete: controller.isCourseSessionOwner
            ? () => _handleDeleteCourseSession(context, controller)
            : null,
      );
    });
  }

  void _handleUpdateCourseSession(CourseSessionWrapperController controller) {
    if (controller.canUpdateCourseSession()) {
      controller.prepareUpdateCourseSession();
      Get.toNamed(AppRoute.updateCourseSession, parameters: {
        'courseId': controller.courseId,
        'courseSessionId': controller.courseSessionId,
      });
    }
  }

  void _handleDeleteCourseSession(
      BuildContext context, CourseSessionWrapperController controller) {
    if (controller.courseSessionId.isNotEmpty) {
      final deleteWrapper = DeleteCourseSessionWrapperWidget(
        courseId: controller.courseId,
        courseSessionId: controller.courseSessionId,
      );
      deleteWrapper.handleDelete(context);
    }
  }
}

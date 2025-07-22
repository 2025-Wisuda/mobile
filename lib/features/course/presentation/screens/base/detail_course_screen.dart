import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseScreen extends StatefulWidget {
  final String courseId;

  const DetailCourseScreen({super.key, required this.courseId});

  @override
  State<DetailCourseScreen> createState() => _DetailCourseScreenState();
}

class _DetailCourseScreenState extends State<DetailCourseScreen> {
  late final ScrollController _scrollController;
  late final DetailCourseController controller;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    controller = Get.find<DetailCourseController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        controller.fetchDetail(widget.courseId);
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
        onRefresh: () => controller.fetchDetail(widget.courseId),
        child: Scrollbar(
          controller: _scrollController,
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: DetailCourseWrapperWidget(
                courseId: widget.courseId,
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
      title: 'course'.message('detailCourse'),
      actions: [
        _buildActionsMenu(context),
      ],
    );
  }

  Widget _buildActionsMenu(BuildContext context) {
    final controller = Get.find<CourseWrapperController>();

    return Obx(() {
      if (!controller.canShowActionsMenu) {
        return const SizedBox.shrink();
      }

      return CustomMenuActionsWidget(
        type: MenuActionType.course,
        entityId: controller.courseId,
        title: controller.courseTitle,
        isTeachingAssistant: controller.isTeachingAssistant,
        isOwner: controller.isCourseOwner,
        onUpdate: controller.isTeachingAssistant
            ? () => _handleUpdateCourse(controller)
            : null,
        onCreate: controller.isTeachingAssistant
            ? () => _handleCreateCourse(controller)
            : null,
        onDelete: controller.isCourseOwner
            ? () => _handleDeleteCourse(context, controller)
            : null,
      );
    });
  }

  void _handleUpdateCourse(CourseWrapperController controller) {
    if (controller.canUpdateCourse()) {
      controller.prepareUpdateCourse();
      Get.toNamed(AppRoute.updateCourse,
          parameters: {'courseId': controller.courseId});
    }
  }

  void _handleCreateCourse(CourseWrapperController controller) {
    Get.toNamed(AppRoute.createCourseSession,
        parameters: {'courseId': controller.courseId});
  }

  void _handleDeleteCourse(
      BuildContext context, CourseWrapperController controller) {
    if (controller.courseId.isNotEmpty) {
      final deleteWrapper = DeleteCourseWrapperWidget(
        courseId: controller.courseId,
        courseTitle: controller.courseTitle,
      );
      deleteWrapper.handleDelete(context);
    }
  }
}

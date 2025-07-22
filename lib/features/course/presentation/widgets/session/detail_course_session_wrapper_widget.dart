import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/course/domain/domain.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/features/user/presentation/controllers/user_profile_controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseSessionWrapperWidget extends StatelessWidget {
  final String courseSessionId;
  final String courseId;
  final DetailCourseSessionController controller;

  const DetailCourseSessionWrapperWidget({
    super.key,
    required this.courseSessionId,
    required this.courseId,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return _buildContent(context);
  }

  Widget _buildContent(BuildContext context) {
    return Obx(() {
      final state = controller.state;
      final courseSession = controller.entity.value;
      return customSkeletonizerHandler(
        context: context,
        state: state,
        feature: 'courseSession',
        customErrorMessage: controller.errorMessage,
        customIcon: Icons.video_camera_front_outlined,
        customSubtitle: 'courseSession'.message('fetchCourseDetail.empty'),
        onSuccess: () => Column(
          children: [
            DetailCourseSessionWidget(courseSession: courseSession),
            const SizedBox(height: 16),
            _buildAttendanceSection(context, courseSession),
          ],
        ),
      );
    });
  }

  Widget _buildAttendanceSection(
      BuildContext context, CourseSessionEntity? courseSession) {
    final userController = Get.find<UserProfileController>();

    final userId = userController.userProfile?.id;
    final isTA =
        courseSession?.teachingAssistants?.any((ta) => ta.id == userId) ??
            false;
    if (isTA) {
      return _buildAttendanceButton(context, courseSession?.id);
    } else {
      return _buildAttenanceStatus(context, courseId, courseSessionId);
    }
  }

  Widget _buildAttenanceStatus(
      BuildContext context, String courseId, String courseSessionId) {
    final controller = Get.find<MyCourseSessionAttendanceController>();

    final attendance = controller.entity.value;
    return customFetchStateHandler(
      context: context,
      state: controller.state,
      feature: 'course',
      customErrorMessage: controller.stateDescription,
      onSuccess: () => _buildAttendanceStatus(context, attendance),
    );
  }

  Widget _buildAttendanceStatus(
      BuildContext context, CourseSessionAttendanceEntity? attendance) {
    return CustomCardItemWidget(
      backgroundColor: context.surface,
      showBorder: true,
      borderColor: context.surfaceDim,
      padding: const EdgeInsets.all(20),
      mainContent: Row(
        children: [
          Icon(Icons.check_circle, color: context.primary, size: 20),
          const SizedBox(width: 8),
          Text(
            'course'.message('attendance'),
            style: context.bodyLargeW(500),
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: CourseSessionAttendanceStatusEnum.getDisplayColor(
                  context, attendance?.status ?? '',
                  isPast: true),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              CourseSessionAttendanceStatusEnum.getDisplayText(
                  attendance?.status ?? '',
                  isPast: true),
              style: context.labelSmallW(500).copyWith(
                    color: CourseSessionAttendanceStatusEnum
                        .getSimplifiedDisplayTextColor(
                            context, attendance?.status ?? '',
                            isPast: true),
                  ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAttendanceButton(BuildContext context, String? courseSessionId) {
    if (courseSessionId == null) return const SizedBox.shrink();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.primaryContainer.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.primary.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.people,
                color: context.primary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'course'.message('attendance'),
                style: context.titleMedium().copyWith(
                      color: context.primary,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          CustomSubmitButtonWidget(
            onPressed: () => Get.toNamed(
              AppRoute.courseSessionAttendanceList,
              arguments: {
                'courseId': courseId,
                'courseSessionId': courseSessionId,
              },
            ),
            textButton: 'course'.message('manageAttendance'),
            width: double.infinity,
            isFormValid: true,
          ),
        ],
      ),
    );
  }
}

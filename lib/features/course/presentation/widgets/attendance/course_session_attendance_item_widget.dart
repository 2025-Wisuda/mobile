import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/core/routes/app_route.dart';
import 'package:mobile/features/course/course.dart';
import 'package:mobile/features/face_recognition/domain/entities/face_recognition_config.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseSessionAttendanceItemWidget extends StatelessWidget {
  final CourseSessionAttendanceEntity attendance;
  final bool showStudent;
  final bool showAction;
  final void Function(Map<String, dynamic>? result)? onMarkAttendance;
  final String courseId;
  final String sessionId;

  const CourseSessionAttendanceItemWidget({
    super.key,
    required this.attendance,
    required this.courseId,
    required this.sessionId,
    this.showStudent = false,
    this.showAction = true,
    this.onMarkAttendance,
  });

  @override
  Widget build(BuildContext context) {
    final status =
        CourseSessionAttendanceStatusEnum.fromString(attendance.status);
    final canMark = attendance.markedAt == null;

    return CustomCardItemWidget(
      onTap: () {
        DetailCourseSessionAttendanceBinding().dependencies();
        final controller = Get.find<DetailCourseSessionAttendanceController>();
        controller.clearEntity();
        controller.fetchDetail({
          'attendanceId': attendance.id ?? '',
          'courseId': courseId,
          'sessionId': sessionId,
        });

        detailCourseSessionAttendanceBottomSheetWidget(
          context,
          controller,
        );
      },
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      margin: EdgeInsets.zero,
      mainContent: _buildInfoSection(context),
      trailingSection: _buildActionSection(context, status, canMark),
      showBorder: true,
    );
  }

  Widget _buildInfoSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Text(
        attendance.student?.name ?? '',
        style: context.bodyMediumW(500).copyWith(
              color: context.onSurfaceVariant,
            ),
      ),
    );
  }

  Widget _buildActionSection(
      BuildContext context, dynamic status, bool canMark) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildStatusChip(context, status),
        if (showAction && canMark) ...[
          const SizedBox(width: 8),
          _buildMarkButton(context),
        ],
      ],
    );
  }

  Widget _buildStatusChip(BuildContext context, dynamic status) {
    if (status == null) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: CourseSessionAttendanceStatusEnum.getDisplayColor(
            context, attendance.status,
            isPast: true),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        CourseSessionAttendanceStatusEnum.getDisplayText(attendance.status,
            isPast: true),
        style: context.labelSmallW(500).copyWith(
              color: CourseSessionAttendanceStatusEnum
                  .getSimplifiedDisplayTextColor(context, attendance.status,
                      isPast: true),
            ),
      ),
    );
  }

  Widget _buildMarkButton(BuildContext context) {
    return CustomSubmitButtonWidget(
      onPressed: () async {
        final attendanceId = attendance.id ?? '';
        final studentId = attendance.student?.studentNumber ?? '';
        final config = FaceRecognitionConfig.courseSession(
          attendanceId: attendanceId,
          studentId: studentId,
          onSuccess: (response) async {
            final name =
                response.faceRecognitionDetails?.detectedName ?? 'User';
            final result = {
              'shouldRefresh': true,
              'successMessage': 'course'.message(
                'faceRecognition.success.default',
                args: {'detectedName': name},
              ),
              'detectedName': name,
              'attendanceType': 'course_session',
            };
            Future.microtask(() {
              Get.back(result: result);
              if (onMarkAttendance != null) {
                onMarkAttendance!(result);
              }
            });
          },
          onFailure: (reason, attempts) async {
            await Future.delayed(const Duration(milliseconds: 500));
            Future.microtask(() {
              Get.offNamed(AppRoute.manualOverrideCourseSessionAttendance,
                  arguments: {
                    'attendanceId': attendanceId,
                    'courseId': courseId,
                    'sessionId': sessionId,
                  });
            });
          },
          onConnectionFailure: (error) async {
            await Future.delayed(const Duration(seconds: 1));
            Future.microtask(() {
              Get.back();
            });
          },
        );
        Get.toNamed(AppRoute.realTimeFaceRecognition, arguments: {
          'config': config,
        });
      },
      buttonType: CustomButtonType.filled,
      isFormValid: true,
      textButton: 'course'.message('mark'),
      width: 120,
      height: 36,
    );
  }
}

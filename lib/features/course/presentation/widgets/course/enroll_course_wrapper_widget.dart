import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/app_route.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class EnrollCourseWrapperWidget extends StatelessWidget {
  final String courseId;

  const EnrollCourseWrapperWidget({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    final enrollCourseController = Get.find<EnrollCourseController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      enrollCourseController.setCourseId(courseId);
    });

    return _buildContent(
      context,
      enrollCourseController: enrollCourseController,
      courseId: courseId,
    );
  }

  Widget _buildContent(
    BuildContext context, {
    required EnrollCourseController enrollCourseController,
    required String courseId,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: context.onSurface.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          _buildForm(
            context,
            enrollCourseController,
          ),
          _buildStateHandler(
            context,
            enrollCourseController..setCourseId(courseId),
          ),
        ],
      ),
    );
  }

  Widget _buildForm(BuildContext context, EnrollCourseController c) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Form(
              key: c.formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: courseEnrollFormWidget(c)),
          Text(
            'course'.message('enrollKeyHelp'),
            style: context.bodySmallW(400).copyWith(
                  color: context.onSurface.withValues(alpha: 0.6),
                ),
          ),
          EnrollCourseButtonWidget(
            c: c,
          ),
        ],
      ),
    );
  }

  Widget _buildStateHandler(BuildContext context, EnrollCourseController c) {
    return Obx(() {
      final state = c.state;
      final errorMessage = c.errorMessage ?? '';

      switch (state) {
        case SubmitStateEnum.success:
          _handleSuccessState(context, c);
        case SubmitStateEnum.failure:
          _handleFailureState(context, errorMessage, c);
        default:
      }
      return const SizedBox.shrink();
    });
  }

  void _handleSuccessState(BuildContext context, EnrollCourseController c) {
    final courseId = c.courseId;

    context.showCustomSnackbar(
      message: 'course'.success('enrollCourse'),
      type: SnackbarType.success,
    );

    Future.microtask(() {
      Get.offNamed(
        AppRoute.detailCourse,
        parameters: {'courseId': courseId ?? ''},
      );
    });
  }

  void _handleFailureState(
      BuildContext context, String errorMessage, EnrollCourseController c) {
    context.showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );

    Future.microtask(() {
      c.resetState();
    });
  }
}

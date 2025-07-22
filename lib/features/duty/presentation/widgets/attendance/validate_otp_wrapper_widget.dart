import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/widget.dart';
import 'package:mobile/features/face_recognition/domain/entities/face_recognition_config.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/utils/util.dart';
import 'package:mobile/shared/widgets/button/button.dart';

class ValidateOtpWrapperWidget extends StatelessWidget {
  final ValidateOtpController controller;
  final String? attendanceId;
  final String? actionType;
  final String? nextRoute;

  const ValidateOtpWrapperWidget({
    super.key,
    required this.controller,
    this.attendanceId,
    this.actionType,
    this.nextRoute,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _buildContent(context, controller),
      ),
    );
  }

  List<Widget> _buildContent(BuildContext context, ValidateOtpController c) {
    return [
      Form(
        key: c.formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: otpFormFieldWidget(context, controller),
      ),
      const SizedBox(height: 12),
      _buildButton(context),
      _buildStateHandler(context),
    ];
  }

  Widget _buildStateHandler(BuildContext context) {
    return Obx(() {
      final state = controller.state;

      switch (state) {
        case SubmitStateEnum.success:
          _handleSuccessState(context);
        case SubmitStateEnum.failure:
          _handleFailureState(context);
        default:
      }

      return const SizedBox.shrink();
    });
  }

  void _handleSuccessState(BuildContext context) {
    Future.microtask(() {
      final config = FaceRecognitionConfig.dutySchedule(
        attendanceId: attendanceId ?? '',
        action: _convertActionType(actionType),
        successDisplayDuration: const Duration(seconds: 1),
        onSuccess: (response) async {
          final name = response.faceRecognitionDetails?.detectedName ?? 'User';
          final clockIn = 'dutySchedule'.label('clockIn');
          final clockOut = 'dutySchedule'.label('clockOut');
          final actionText = actionType == 'clockIn' ? clockIn : clockOut;

          Future.microtask(() {
            Get.offAllNamed(AppRoute.myAttendanceRecords, arguments: {
              'shouldRefresh': true,
              'successMessage': 'dutySchedule'.message(
                  'faceRecognition.success.default',
                  args: {'action': actionText}),
              'detectedName': name,
              'attendanceType': 'duty',
              'action': actionType,
            });
          });
        },
        onFailure: (reason, attempts) async {
          await Future.delayed(const Duration(milliseconds: 500));

          Future.microtask(() {
            Get.offNamed(AppRoute.manualOverrideAttendance, arguments: {
              'attendanceId': attendanceId,
              'actionType': actionType,
              'reason': reason,
              'fromFaceRecognition': true,
              'attemptCount': attempts,
              'attendanceType': 'duty',
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

      Get.offNamed(AppRoute.realTimeFaceRecognition, arguments: {
        'config': config,
      });
    });
  }

  void _handleFailureState(BuildContext context) {
    showCustomSnackbar(
      message: controller.stateDescription,
      type: SnackbarType.error,
    );

    Future.microtask(() {
      controller.cleanForm();
      controller.resetState();
    });
  }

  Widget _buildButton(BuildContext context) {
    return Obx(() {
      final isFormValid = controller.isFormValid.value;
      return CustomSubmitButtonWidget(
        isFormValid: isFormValid,
        state: controller.state,
        onPressed: isFormValid ? () => controller.submitForm() : null,
        textButton: 'dutySchedule'.message('validateOtp'),
      );
    });
  }

  String _convertActionType(String? actionType) {
    final convertedAction = switch (actionType) {
      'clockIn' => 'clock_in',
      'clockOut' => 'clock_out',
      _ => 'clock_in', 
    };
    return convertedAction;
  }
}

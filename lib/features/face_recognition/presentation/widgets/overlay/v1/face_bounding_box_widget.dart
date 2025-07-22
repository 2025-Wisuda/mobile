import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/face_recognition/domain/domain.dart';
import 'package:mobile/features/face_recognition/presentation/controllers/real_time_face_recognition_controller.dart';
import 'package:mobile/features/face_recognition/presentation/widgets/camera/camera_controller_helper.dart';
import 'package:mobile/features/face_recognition/presentation/widgets/overlay/v1/status_message_widget.dart';
import 'package:mobile/shared/utils/util.dart';

class FaceBoundingBoxWidget extends StatelessWidget {
  final RealTimeFaceRecognitionController controller;

  const FaceBoundingBoxWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final faceQuality = controller.currentFaceQuality.value;

      // Safety check: only show bounding box if face quality is good/excellent
      if (faceQuality == null ||
          faceQuality.level == FaceQualityLevelEnum.poor) {
        // V1 vs V2 Performance Logging
        SimpleLogger.info(
            '[V1_V2_PERFORMANCE] V1: No bounding box shown (quality: ${faceQuality?.level ?? 'null'})');
        return const SizedBox.shrink();
      }

      // Get helper from GetX with safety check
      CameraControllerHelper? helper;
      try {
        helper = Get.find<CameraControllerHelper>(tag: 'camera_helper');
      } catch (e) {
        // V1 vs V2 Performance Logging
        SimpleLogger.warning('[V1_V2_ERROR] V1: Camera helper not found');
        return const SizedBox.shrink();
      }

      final face = helper.currentFace;
      final imageSize = helper.imageSize;

      if (face == null || imageSize == null) {
        // V1 vs V2 Performance Logging
        SimpleLogger.info('[V1_V2_PERFORMANCE] V1: No face or image size data');
        return const SizedBox.shrink();
      }

      // V1 vs V2 Performance Logging
      SimpleLogger.info(
          '[V1_V2_PERFORMANCE] V1: Rendering bounding box (quality: ${faceQuality.level})');

      final status = _getCurrentStatus();
      final bounds = face.boundingBox;

      // Get screen size
      final screenSize = MediaQuery.of(context).size;

      // ML Kit face detection coordinates are already in the correct space
      // Just scale them to screen size
      final scaleX = screenSize.width / imageSize.width;
      final scaleY = screenSize.height / imageSize.height;

      // Apply direct scaling to face bounds
      final scaledLeft = bounds.left * scaleX;
      final scaledTop = bounds.top * scaleY;
      final scaledWidth = bounds.width * scaleX;
      final scaledHeight = bounds.height * scaleY;

      // Make bounding box 1.5x wider and 1.2x taller than detected face
      final widthExpansionFactor = 1.5;
      final heightExpansionFactor = 1.2;
      final expandedWidth = scaledWidth * widthExpansionFactor;
      final expandedHeight = scaledHeight * heightExpansionFactor;

      // Center the expanded bounding box on the face
      final centerX = scaledLeft + (scaledWidth / 2);
      final centerY = scaledTop + (scaledHeight / 2);
      final expandedLeft = centerX - (expandedWidth / 2);
      final expandedTop = centerY - (expandedHeight / 2);

      return Positioned(
        left: expandedLeft,
        top: expandedTop,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Status message above bounding box
            StatusMessageWidget(controller: controller),
            const SizedBox(height: 8),
            // Bounding box
            Container(
              width: expandedWidth,
              height: expandedHeight,
              decoration: BoxDecoration(
                border: Border.all(
                  color: status.color,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
      );
    });
  }

  FaceRecognitionStatus _getCurrentStatus() {
    if (controller.isSuccess.value) {
      return FaceRecognitionStatus.success;
    } else if (controller.isWaitingForResponse.value) {
      return FaceRecognitionStatus.processing;
    } else if (controller.currentFaceQuality.value != null) {
      switch (controller.currentFaceQuality.value!.level) {
        case FaceQualityLevelEnum.excellent:
          return FaceRecognitionStatus.excellentQuality;
        case FaceQualityLevelEnum.good:
          return FaceRecognitionStatus.goodQuality;
        case FaceQualityLevelEnum.poor:
          return FaceRecognitionStatus.poorQuality;
      }
    } else {
      return FaceRecognitionStatus.noFaceDetected;
    }
  }
}

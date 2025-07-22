import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/face_recognition/domain/entities/face_recognition_config.dart';
import 'package:mobile/features/face_recognition/presentation/controllers/real_time_face_recognition_controller.dart';
import 'package:mobile/features/face_recognition/presentation/widgets/camera/camera_preview_widget.dart';
import 'package:mobile/features/face_recognition/presentation/widgets/overlay/v1/face_bounding_box_widget.dart';
import 'package:mobile/features/face_recognition/presentation/widgets/overlay/v2/circle_overlay_widget.dart';
import 'package:mobile/shared/extensions/text_helper_extensions.dart';
import 'package:mobile/shared/utils/util.dart';

class FaceRecognitionWrapperWidget extends StatelessWidget {
  final FaceRecognitionConfig config;
  final bool useModernUI;

  const FaceRecognitionWrapperWidget({
    super.key,
    required this.config,
    this.useModernUI = false,
  });

  @override
  Widget build(BuildContext context) {
    // V1 vs V2 Performance Logging
    SimpleLogger.info(
        '[V1_V2_PERFORMANCE] Building ${useModernUI ? 'V2' : 'V1'} UI mode');

    return GetX<RealTimeFaceRecognitionController>(
      builder: (controller) {
        if (!controller.isInitialized.value) {
          return _buildLoadingState(context, controller);
        }

        return useModernUI
            ? _buildModernUI(context, controller)
            : _buildClassicUI(context, controller);
      },
    );
  }

  Widget _buildLoadingState(
      BuildContext context, RealTimeFaceRecognitionController controller) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(height: 20),
          Text(
            controller.statusMessage.value.isNotEmpty
                ? controller.statusMessage.value
                : 'faceRecognition'.message('initializingCamera'),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
            textAlign: TextAlign.center,
          ),
          if (controller.isRetrying.value) ...[
            const SizedBox(height: 10),
            Text(
              'faceRecognition'.message('retrying'),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withValues(alpha: 0.7),
                  ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildClassicUI(
      BuildContext context, RealTimeFaceRecognitionController controller) {
    // V1 vs V2 Performance Logging
    SimpleLogger.info(
        '[V1_V2_PERFORMANCE] Rendering V1 Classic UI with bounding box');

    return Stack(
      children: [
        if (controller.cameraController.value != null)
          CameraPreviewWidget(
            cameraController: controller.cameraController.value!,
            onFaceQualityChanged: controller.onFaceQualityChanged,
            onFaceReady: controller.onFaceReady,
          ),
        // V1 Overlays
        FaceBoundingBoxWidget(controller: controller),
      ],
    );
  }

  Widget _buildModernUI(
      BuildContext context, RealTimeFaceRecognitionController controller) {
    // V1 vs V2 Performance Logging
    SimpleLogger.info(
        '[V1_V2_PERFORMANCE] Rendering V2 Modern UI with circle overlay');

    return Stack(
      children: [
        if (controller.cameraController.value != null)
          CameraPreviewWidget(
            cameraController: controller.cameraController.value!,
            onFaceQualityChanged: controller.onFaceQualityChanged,
            onFaceReady: controller.onFaceReady,
          ),
        // V2 Overlays
        CircleOverlayWidget(controller: controller),
      ],
    );
  }
}

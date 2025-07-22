import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/face_recognition/domain/domain.dart';
import 'package:mobile/features/face_recognition/presentation/controllers/real_time_face_recognition_controller.dart';
import 'package:mobile/features/face_recognition/presentation/widgets/camera/camera_controller_helper.dart';

class CameraPreviewWidget extends StatefulWidget {
  final CameraController cameraController;
  final Function(FaceQualityEntity) onFaceQualityChanged;
  final VoidCallback? onFaceReady;

  const CameraPreviewWidget({
    super.key,
    required this.cameraController,
    required this.onFaceQualityChanged,
    this.onFaceReady,
  });

  @override
  State<CameraPreviewWidget> createState() => _CameraPreviewWidgetState();
}

class _CameraPreviewWidgetState extends State<CameraPreviewWidget> {
  late final CameraControllerHelper _helper;
  late final RealTimeFaceRecognitionController _controller;

  @override
  void initState() {
    super.initState();
    _controller = Get.find<RealTimeFaceRecognitionController>();
    _helper = CameraControllerHelper(
      cameraController: widget.cameraController,
      onFaceQualityChanged: widget.onFaceQualityChanged,
      onFaceReady: widget.onFaceReady,
      controller: _controller,
    );
    _helper.startFaceDetection();

    // Make helper accessible to other widgets
    Get.put(_helper, tag: 'camera_helper');
  }

  @override
  void dispose() {
    _helper.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Check if camera controller is null or disposed
    if (!widget.cameraController.value.isInitialized) {
      return const SizedBox.shrink();
    }

    // Additional safety check for disposed controller
    try {
      final camera = widget.cameraController.value;
      final size = MediaQuery.of(context).size;
      var scale = size.aspectRatio * camera.aspectRatio;
      if (scale < 1) scale = 1 / scale;

      return SizedBox.expand(
        child: Transform.scale(
          scale: scale,
          child: Center(
            child: CameraPreview(widget.cameraController),
          ),
        ),
      );
    } catch (e) {
      // If any error occurs (like disposed controller), return empty widget
      return const SizedBox.shrink();
    }
  }
}

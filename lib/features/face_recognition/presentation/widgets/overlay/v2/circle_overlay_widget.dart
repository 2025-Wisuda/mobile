import 'package:flutter/material.dart';

import 'package:mobile/features/face_recognition/domain/domain.dart';
import 'package:mobile/features/face_recognition/presentation/controllers/real_time_face_recognition_controller.dart';
import 'package:mobile/features/face_recognition/presentation/widgets/overlay/v2/animation_controller_helper.dart';
import 'package:mobile/shared/utils/util.dart';

class CircleOverlayWidget extends StatefulWidget {
  final RealTimeFaceRecognitionController controller;

  const CircleOverlayWidget({
    super.key,
    required this.controller,
  });

  @override
  State<CircleOverlayWidget> createState() => _CircleOverlayWidgetState();
}

class _CircleOverlayWidgetState extends State<CircleOverlayWidget>
    with TickerProviderStateMixin {
  late final AnimationControllerHelper _animationHelper;

  @override
  void initState() {
    super.initState();
    _animationHelper = AnimationControllerHelper(
      vsync: this,
      controller: widget.controller,
    );

    // V1 vs V2 Performance Logging
    SimpleLogger.info('[V1_V2_PERFORMANCE] V2: Circle overlay initialized');
  }

  @override
  void dispose() {
    _animationHelper.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final circleSize = screenWidth * 0.9; // 90% of screen width

    // Calculate exact circle position
    final circleCenterX = screenWidth / 2;
    final circleCenterY =
        (screenHeight / 2) - (screenHeight * 0.2); // -0.4 alignment

    // V1 vs V2 Performance Logging
    final status = _getCurrentStatus();
    SimpleLogger.info(
        '[V1_V2_PERFORMANCE] V2: Rendering circle overlay (status: ${status.name})');

    return Stack(
      children: [
        // Surface background with hole for camera
        ClipPath(
          clipper: CircleHoleClipper(
            circleCenterX: circleCenterX,
            circleCenterY: circleCenterY,
            circleRadius: circleSize / 2,
          ),
          child: Container(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        // Circle overlay
        Positioned(
          left: circleCenterX - (circleSize / 2),
          top: circleCenterY - (circleSize / 2),
          child: AnimatedBuilder(
            animation: _animationHelper.animationListenable,
            builder: (context, child) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  // Circle border overlay
                  Container(
                    width: circleSize,
                    height: circleSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: _getBorderColor(),
                        width: 3,
                      ),
                    ),
                  ),
                  // Loading animation
                  if (widget.controller.isWaitingForResponse.value)
                    SizedBox(
                      width: circleSize,
                      height: circleSize,
                      child: CircularProgressIndicator(
                        value: _animationHelper.scanAnimation.value,
                        strokeWidth: 3,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(_getBorderColor()),
                        backgroundColor:
                            _getBorderColor().withValues(alpha: 0.2),
                      ),
                    ),
                  // Success animation
                  if (widget.controller.isSuccess.value)
                    Transform.scale(
                      scale: _animationHelper.successAnimation.value,
                      child: Container(
                        width: circleSize,
                        height: circleSize,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 4,
                          ),
                        ),
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: circleSize * 0.18,
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Color _getBorderColor() {
    final status = _getCurrentStatus();
    return status.color;
  }

  FaceRecognitionStatus _getCurrentStatus() {
    if (widget.controller.isSuccess.value) {
      return FaceRecognitionStatus.success;
    } else if (widget.controller.isWaitingForResponse.value) {
      return FaceRecognitionStatus.processing;
    } else if (widget.controller.currentFaceQuality.value != null) {
      final faceQuality = widget.controller.currentFaceQuality.value!;
      switch (faceQuality.level) {
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

// Custom clipper to create a hole in the surface
class CircleHoleClipper extends CustomClipper<Path> {
  final double circleCenterX;
  final double circleCenterY;
  final double circleRadius;

  CircleHoleClipper({
    required this.circleCenterX,
    required this.circleCenterY,
    required this.circleRadius,
  });

  @override
  Path getClip(Size size) {
    final path = Path();

    // Add full screen rectangle
    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    // Subtract circle from the path (creates a hole)
    path.addOval(Rect.fromCircle(
      center: Offset(circleCenterX, circleCenterY),
      radius: circleRadius,
    ));

    // Fill rule to create hole
    path.fillType = PathFillType.evenOdd;

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

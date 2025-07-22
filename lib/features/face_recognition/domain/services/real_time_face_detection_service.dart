import 'dart:async';

import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

import '../entities/face_quality_entity.dart';
import '../enums/face_quality_level_enum.dart';
import 'face_detection_service.dart';

abstract class RealTimeFaceDetectionService {
  Stream<FaceQualityEntity?> detectFaces(InputImage inputImage);
  void dispose();
}

class RealTimeFaceDetectionServiceImpl implements RealTimeFaceDetectionService {
  final FaceDetector _faceDetector;
  final StreamController<FaceQualityEntity?> _qualityController =
      StreamController<FaceQualityEntity?>.broadcast();

  RealTimeFaceDetectionServiceImpl()
      : _faceDetector = FaceDetector(
          options: FaceDetectorOptions(
            performanceMode: FaceDetectorMode.accurate,
            enableLandmarks: true,
            enableClassification: true,
            enableTracking: true,
            minFaceSize: 0.15,
          ),
        );

  @override
  Stream<FaceQualityEntity?> detectFaces(InputImage inputImage) async* {
    try {
      final faces = await FaceDetectionService.detectFaces(inputImage);

      if (faces.isEmpty) {
        yield null;
        return;
      }

      // Get the largest face (closest to camera)
      final largestFace = faces.reduce((a, b) =>
          a.boundingBox.width * a.boundingBox.height >
                  b.boundingBox.width * b.boundingBox.height
              ? a
              : b);

      final quality = _assessFaceQuality(largestFace);
      yield quality;
    } catch (e) {
      yield null;
    }
  }

  FaceQualityEntity _assessFaceQuality(Face face) {
    final boundingBox = face.boundingBox;
    final area = boundingBox.width * boundingBox.height;
    final aspectRatio = boundingBox.width / boundingBox.height;

    // Assess head pose
    final headYaw = face.headEulerAngleY ?? 0;
    final headPitch = face.headEulerAngleX ?? 0;
    final headRoll = face.headEulerAngleZ ?? 0;

    // Assess facial features
    final smilingProbability = face.smilingProbability ?? 0;
    final leftEyeOpenProbability = face.leftEyeOpenProbability ?? 0;
    final rightEyeOpenProbability = face.rightEyeOpenProbability ?? 0;

    // Quality assessment logic
    bool isWellProportioned = aspectRatio >= 0.7 && aspectRatio <= 1.3;
    bool isGoodSize = area >= 5000; // Minimum area threshold
    bool isGoodPose =
        (headYaw.abs() < 15) && (headPitch.abs() < 15) && (headRoll.abs() < 15);
    bool isEyesOpen =
        leftEyeOpenProbability > 0.5 && rightEyeOpenProbability > 0.5;

    // Determine quality level
    FaceQualityLevelEnum level;

    if (isGoodSize && isWellProportioned && isGoodPose && isEyesOpen) {
      level = FaceQualityLevelEnum.excellent;
    } else if (isGoodSize && isWellProportioned && isGoodPose) {
      level = FaceQualityLevelEnum.good;
    } else {
      level = FaceQualityLevelEnum.poor;
    }

    return FaceQualityEntity(
      level: level,
      area: area.toDouble(),
      aspectRatio: aspectRatio,
      isWellProportioned: isWellProportioned,
      headYaw: headYaw,
      headPitch: headPitch,
      headRoll: headRoll,
      smilingProbability: smilingProbability,
      leftEyeOpenProbability: leftEyeOpenProbability,
      rightEyeOpenProbability: rightEyeOpenProbability,
    );
  }

  @override
  void dispose() {
    _faceDetector.close();
    _qualityController.close();
  }
}

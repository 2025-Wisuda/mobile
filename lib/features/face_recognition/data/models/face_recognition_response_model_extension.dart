import 'package:mobile/features/face_recognition/domain/entities/entity.dart';
import 'face_recognition_response_model.dart';

extension FaceRecognitionResponseModelExtension
    on FaceRecognitionResponseModel {
  FaceRecognitionResponseEntity toEntity() {
    return FaceRecognitionResponseEntity(
      type: type,
      attendanceId: attendanceId,
      action: action,
      code: code,
      status: status,
      message: message,
      requestId: requestId,
      timestamp: timestamp,
      faceRecognitionDetails: faceRecognitionDetails?.toEntity(),
    );
  }
}

extension FaceRecognitionDetailsModelExtension on FaceRecognitionDetailsModel {
  FaceRecognitionDetailsEntity toEntity() {
    return FaceRecognitionDetailsEntity(
      success: success,
      expectedIdentifier: expectedIdentifier,
      expectedName: expectedName,
      detectedIdentifier: detectedIdentifier,
      detectedName: detectedName,
      identifierType: identifierType,
      confidence: confidence,
      confidencePercentage: confidencePercentage,
      threshold: threshold,
      attendanceType: attendanceType,
      error: error,
      rawPersonId: rawPersonId,
    );
  }
}

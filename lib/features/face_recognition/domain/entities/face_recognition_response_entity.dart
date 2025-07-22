import 'package:freezed_annotation/freezed_annotation.dart';

part 'face_recognition_response_entity.freezed.dart';

@freezed
abstract class FaceRecognitionResponseEntity
    with _$FaceRecognitionResponseEntity {
  const factory FaceRecognitionResponseEntity({
    String? type,
    String? attendanceId,
    String? action,
    int? code,
    String? status,
    String? message,
    String? requestId,
    String? timestamp,
    FaceRecognitionDetailsEntity? faceRecognitionDetails,
  }) = _FaceRecognitionResponseEntity;
}

@freezed
abstract class FaceRecognitionDetailsEntity
    with _$FaceRecognitionDetailsEntity {
  const factory FaceRecognitionDetailsEntity({
    bool? success,
    String? expectedIdentifier,
    String? expectedName,
    String? detectedIdentifier,
    String? detectedName,
    String? identifierType,
    double? confidence,
    double? confidencePercentage,
    double? threshold,
    String? attendanceType,
    String? error,
    String? rawPersonId,
  }) = _FaceRecognitionDetailsEntity;
}

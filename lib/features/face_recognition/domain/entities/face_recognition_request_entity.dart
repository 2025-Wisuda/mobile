import 'package:freezed_annotation/freezed_annotation.dart';

part 'face_recognition_request_entity.freezed.dart';

@freezed
abstract class FaceRecognitionRequestEntity
    with _$FaceRecognitionRequestEntity {
  const factory FaceRecognitionRequestEntity({
    required String imageBase64,
    String? attendanceId,
    String? action,
    String? requestId,
  }) = _FaceRecognitionRequestEntity;
}

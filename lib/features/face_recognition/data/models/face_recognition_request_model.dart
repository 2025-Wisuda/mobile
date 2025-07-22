import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/face_recognition/domain/entities/entity.dart';

part 'face_recognition_request_model.freezed.dart';
part 'face_recognition_request_model.g.dart';

@freezed
abstract class FaceRecognitionRequestModel with _$FaceRecognitionRequestModel {
  const factory FaceRecognitionRequestModel({
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'attendance_id') required String attendanceId,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'action') String? action,
    @JsonKey(name: 'request_id') String? requestId,
  }) = _FaceRecognitionRequestModel;

  factory FaceRecognitionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$FaceRecognitionRequestModelFromJson(json);

  factory FaceRecognitionRequestModel.fromEntity(
      FaceRecognitionRequestEntity entity) {
    return FaceRecognitionRequestModel(
      type: 'face_recognition',
      attendanceId: entity.attendanceId ?? '',
      image: entity.imageBase64,
      action: entity.action,
      requestId: entity.requestId,
    );
  }
}

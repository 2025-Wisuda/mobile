import 'package:freezed_annotation/freezed_annotation.dart';

part 'face_recognition_response_model.freezed.dart';
part 'face_recognition_response_model.g.dart';

@freezed
abstract class FaceRecognitionResponseModel
    with _$FaceRecognitionResponseModel {
  const factory FaceRecognitionResponseModel({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'attendance_id') String? attendanceId,
    @JsonKey(name: 'action') String? action,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'request_id') String? requestId,
    @JsonKey(name: 'timestamp') String? timestamp,
    @JsonKey(name: 'face_recognition_details')
    FaceRecognitionDetailsModel? faceRecognitionDetails,
  }) = _FaceRecognitionResponseModel;

  factory FaceRecognitionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FaceRecognitionResponseModelFromJson(json);
}

@freezed
abstract class FaceRecognitionDetailsModel with _$FaceRecognitionDetailsModel {
  const factory FaceRecognitionDetailsModel({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'expected_identifier') String? expectedIdentifier,
    @JsonKey(name: 'expected_name') String? expectedName,
    @JsonKey(name: 'detected_identifier') String? detectedIdentifier,
    @JsonKey(name: 'detected_name') String? detectedName,
    @JsonKey(name: 'identifier_type') String? identifierType,
    @JsonKey(name: 'confidence') double? confidence,
    @JsonKey(name: 'confidence_percentage') double? confidencePercentage,
    @JsonKey(name: 'threshold') double? threshold,
    @JsonKey(name: 'attendance_type') String? attendanceType,
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'raw_person_id') String? rawPersonId,
  }) = _FaceRecognitionDetailsModel;

  factory FaceRecognitionDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$FaceRecognitionDetailsModelFromJson(json);
}

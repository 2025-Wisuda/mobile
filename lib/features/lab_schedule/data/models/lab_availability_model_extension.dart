part of 'lab_availability_model.dart';

extension LabAvailabilityModelExtension on LabAvailabilityModel {
  LabAvailabilityEntity toEntity() {
    return LabAvailabilityEntity(
      startTime: startTime,
      endTime: endTime,
    );
  }
}

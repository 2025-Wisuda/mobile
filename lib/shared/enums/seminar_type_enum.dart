import 'package:mobile/shared/extensions/extension.dart';

enum SeminarTypeEnum {
  proposal('Seminar Proposal', 'proposal'),
  result('Seminar Hasil', 'result'),
  internship('Seminar KP', 'internship');

  const SeminarTypeEnum(this.value, this.labelKey);

  final String value;
  final String labelKey;

  String getLabel() => 'roomBooking'.message(labelKey);

  static SeminarTypeEnum? fromValue(String? value) {
    if (value == null) return null;

    for (final type in SeminarTypeEnum.values) {
      if (type.value == value) {
        return type;
      }
    }
    return null;
  }

  static List<String> get allValues =>
      SeminarTypeEnum.values.map((e) => e.value).toList();
}

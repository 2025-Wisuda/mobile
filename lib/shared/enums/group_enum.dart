enum GroupEnum {
  laboratoryHead('Kepala laboratorium'),
  laboratoryTechnician('Teknisi Laboratorium'),
  laboratoryAssistant('Asisten Laboratorium'),
  lecturer('Dosen'),
  student('Mahasiswa');

  const GroupEnum(this.displayName);

  final String displayName;

  String get toLowerCase => displayName.toLowerCase();

  static GroupEnum? fromString(String? value) {
    if (value == null || value.isEmpty) return null;

    final lowerValue = value.toLowerCase().trim();

    for (final group in GroupEnum.values) {
      if (group.displayName.toLowerCase() == lowerValue ||
          group.name.toLowerCase() == lowerValue) {
        return group;
      }
    }

    return null;
  }

  static List<String> get allDisplayNames {
    return GroupEnum.values.map((e) => e.displayName).toList();
  }

  static List<String> get allLowerCaseNames {
    return GroupEnum.values.map((e) => e.toLowerCase).toList();
  }

  bool get hasLevel1Access {
    return this == GroupEnum.laboratoryAssistant;
  }

  bool get hasLevel2Access {
    return this == GroupEnum.laboratoryHead ||
        this == GroupEnum.laboratoryTechnician ||
        hasLevel1Access;
  }

  bool get hasLevel3Access {
    return this == GroupEnum.student || hasLevel2Access;
  }

  bool get hasLevel4Access {
    return true;
  }

  bool get isNonStaff {
    return this == GroupEnum.student || this == GroupEnum.lecturer;
  }

  bool get isLabStaff {
    return this == GroupEnum.laboratoryHead ||
        this == GroupEnum.laboratoryTechnician ||
        this == GroupEnum.laboratoryAssistant;
  }

  bool get isStudent {
    return this == GroupEnum.student || this == GroupEnum.laboratoryAssistant;
  }

  bool get isStaff {
    return this == GroupEnum.lecturer ||
        this == GroupEnum.laboratoryHead ||
        this == GroupEnum.laboratoryTechnician ||
        this == GroupEnum.laboratoryAssistant;
  }

  static List<GroupEnum> get level1AccessGroups {
    return [GroupEnum.laboratoryAssistant];
  }

  static List<GroupEnum> get level2AccessGroups {
    return [
      GroupEnum.laboratoryHead,
      GroupEnum.laboratoryTechnician,
      GroupEnum.laboratoryAssistant,
    ];
  }

  static List<GroupEnum> get level3AccessGroups {
    return [
      GroupEnum.student,
      GroupEnum.laboratoryHead,
      GroupEnum.laboratoryTechnician,
      GroupEnum.laboratoryAssistant,
    ];
  }

  static List<GroupEnum> get level4AccessGroups {
    return GroupEnum.values;
  }

  static List<GroupEnum> get level5AccessGroups {
    return [
      GroupEnum.student,
      GroupEnum.laboratoryAssistant,
    ];
  }
}

extension GroupEnumExtension on String? {
  GroupEnum? toGroupEnum() => GroupEnum.fromString(this);
}

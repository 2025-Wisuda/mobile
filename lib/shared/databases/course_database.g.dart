// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_database.dart';

// ignore_for_file: type=lint
class $CoursesTable extends Courses with TableInfo<$CoursesTable, Course> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CoursesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _startDateMeta =
      const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
      'start_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _endDateMeta =
      const VerificationMeta('endDate');
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
      'end_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _studentsMeta =
      const VerificationMeta('students');
  @override
  late final GeneratedColumn<String> students = GeneratedColumn<String>(
      'students', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _teachingAssistantsMeta =
      const VerificationMeta('teachingAssistants');
  @override
  late final GeneratedColumn<String> teachingAssistants =
      GeneratedColumn<String>('teaching_assistants', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _enrollKeyMeta =
      const VerificationMeta('enrollKey');
  @override
  late final GeneratedColumn<String> enrollKey = GeneratedColumn<String>(
      'enroll_key', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _totalStudentsMeta =
      const VerificationMeta('totalStudents');
  @override
  late final GeneratedColumn<int> totalStudents = GeneratedColumn<int>(
      'total_students', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalTeachingAssistantsMeta =
      const VerificationMeta('totalTeachingAssistants');
  @override
  late final GeneratedColumn<int> totalTeachingAssistants =
      GeneratedColumn<int>('total_teaching_assistants', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalSessionsMeta =
      const VerificationMeta('totalSessions');
  @override
  late final GeneratedColumn<int> totalSessions = GeneratedColumn<int>(
      'total_sessions', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _hasEnrollmentMeta =
      const VerificationMeta('hasEnrollment');
  @override
  late final GeneratedColumn<bool> hasEnrollment = GeneratedColumn<bool>(
      'has_enrollment', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_enrollment" IN (0, 1))'));
  static const VerificationMeta _isEnrollmentOpenMeta =
      const VerificationMeta('isEnrollmentOpen');
  @override
  late final GeneratedColumn<bool> isEnrollmentOpen = GeneratedColumn<bool>(
      'is_enrollment_open', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_enrollment_open" IN (0, 1))'));
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _recentSessionsMeta =
      const VerificationMeta('recentSessions');
  @override
  late final GeneratedColumn<String> recentSessions = GeneratedColumn<String>(
      'recent_sessions', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isParticipantMeta =
      const VerificationMeta('isParticipant');
  @override
  late final GeneratedColumn<bool> isParticipant = GeneratedColumn<bool>(
      'is_participant', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_participant" IN (0, 1))'));
  static const VerificationMeta _localStoredAtMeta =
      const VerificationMeta('localStoredAt');
  @override
  late final GeneratedColumn<DateTime> localStoredAt =
      GeneratedColumn<DateTime>('local_stored_at', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        description,
        startDate,
        endDate,
        students,
        teachingAssistants,
        enrollKey,
        totalStudents,
        totalTeachingAssistants,
        totalSessions,
        hasEnrollment,
        isEnrollmentOpen,
        image,
        recentSessions,
        isParticipant,
        localStoredAt,
        createdBy
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'courses';
  @override
  VerificationContext validateIntegrity(Insertable<Course> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
    if (data.containsKey('end_date')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta));
    }
    if (data.containsKey('students')) {
      context.handle(_studentsMeta,
          students.isAcceptableOrUnknown(data['students']!, _studentsMeta));
    }
    if (data.containsKey('teaching_assistants')) {
      context.handle(
          _teachingAssistantsMeta,
          teachingAssistants.isAcceptableOrUnknown(
              data['teaching_assistants']!, _teachingAssistantsMeta));
    }
    if (data.containsKey('enroll_key')) {
      context.handle(_enrollKeyMeta,
          enrollKey.isAcceptableOrUnknown(data['enroll_key']!, _enrollKeyMeta));
    }
    if (data.containsKey('total_students')) {
      context.handle(
          _totalStudentsMeta,
          totalStudents.isAcceptableOrUnknown(
              data['total_students']!, _totalStudentsMeta));
    }
    if (data.containsKey('total_teaching_assistants')) {
      context.handle(
          _totalTeachingAssistantsMeta,
          totalTeachingAssistants.isAcceptableOrUnknown(
              data['total_teaching_assistants']!,
              _totalTeachingAssistantsMeta));
    }
    if (data.containsKey('total_sessions')) {
      context.handle(
          _totalSessionsMeta,
          totalSessions.isAcceptableOrUnknown(
              data['total_sessions']!, _totalSessionsMeta));
    }
    if (data.containsKey('has_enrollment')) {
      context.handle(
          _hasEnrollmentMeta,
          hasEnrollment.isAcceptableOrUnknown(
              data['has_enrollment']!, _hasEnrollmentMeta));
    }
    if (data.containsKey('is_enrollment_open')) {
      context.handle(
          _isEnrollmentOpenMeta,
          isEnrollmentOpen.isAcceptableOrUnknown(
              data['is_enrollment_open']!, _isEnrollmentOpenMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('recent_sessions')) {
      context.handle(
          _recentSessionsMeta,
          recentSessions.isAcceptableOrUnknown(
              data['recent_sessions']!, _recentSessionsMeta));
    }
    if (data.containsKey('is_participant')) {
      context.handle(
          _isParticipantMeta,
          isParticipant.isAcceptableOrUnknown(
              data['is_participant']!, _isParticipantMeta));
    }
    if (data.containsKey('local_stored_at')) {
      context.handle(
          _localStoredAtMeta,
          localStoredAt.isAcceptableOrUnknown(
              data['local_stored_at']!, _localStoredAtMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Course map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Course(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_date']),
      endDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_date']),
      students: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}students']),
      teachingAssistants: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}teaching_assistants']),
      enrollKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}enroll_key']),
      totalStudents: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_students']),
      totalTeachingAssistants: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}total_teaching_assistants']),
      totalSessions: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_sessions']),
      hasEnrollment: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_enrollment']),
      isEnrollmentOpen: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_enrollment_open']),
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
      recentSessions: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}recent_sessions']),
      isParticipant: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_participant']),
      localStoredAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}local_stored_at']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
    );
  }

  @override
  $CoursesTable createAlias(String alias) {
    return $CoursesTable(attachedDatabase, alias);
  }
}

class Course extends DataClass implements Insertable<Course> {
  final String id;
  final String? title;
  final String? description;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? students;
  final String? teachingAssistants;
  final String? enrollKey;
  final int? totalStudents;
  final int? totalTeachingAssistants;
  final int? totalSessions;
  final bool? hasEnrollment;
  final bool? isEnrollmentOpen;
  final String? image;
  final String? recentSessions;
  final bool? isParticipant;
  final DateTime? localStoredAt;
  final String? createdBy;
  const Course(
      {required this.id,
      this.title,
      this.description,
      this.startDate,
      this.endDate,
      this.students,
      this.teachingAssistants,
      this.enrollKey,
      this.totalStudents,
      this.totalTeachingAssistants,
      this.totalSessions,
      this.hasEnrollment,
      this.isEnrollmentOpen,
      this.image,
      this.recentSessions,
      this.isParticipant,
      this.localStoredAt,
      this.createdBy});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<DateTime>(startDate);
    }
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime>(endDate);
    }
    if (!nullToAbsent || students != null) {
      map['students'] = Variable<String>(students);
    }
    if (!nullToAbsent || teachingAssistants != null) {
      map['teaching_assistants'] = Variable<String>(teachingAssistants);
    }
    if (!nullToAbsent || enrollKey != null) {
      map['enroll_key'] = Variable<String>(enrollKey);
    }
    if (!nullToAbsent || totalStudents != null) {
      map['total_students'] = Variable<int>(totalStudents);
    }
    if (!nullToAbsent || totalTeachingAssistants != null) {
      map['total_teaching_assistants'] = Variable<int>(totalTeachingAssistants);
    }
    if (!nullToAbsent || totalSessions != null) {
      map['total_sessions'] = Variable<int>(totalSessions);
    }
    if (!nullToAbsent || hasEnrollment != null) {
      map['has_enrollment'] = Variable<bool>(hasEnrollment);
    }
    if (!nullToAbsent || isEnrollmentOpen != null) {
      map['is_enrollment_open'] = Variable<bool>(isEnrollmentOpen);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || recentSessions != null) {
      map['recent_sessions'] = Variable<String>(recentSessions);
    }
    if (!nullToAbsent || isParticipant != null) {
      map['is_participant'] = Variable<bool>(isParticipant);
    }
    if (!nullToAbsent || localStoredAt != null) {
      map['local_stored_at'] = Variable<DateTime>(localStoredAt);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    return map;
  }

  CoursesCompanion toCompanion(bool nullToAbsent) {
    return CoursesCompanion(
      id: Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      students: students == null && nullToAbsent
          ? const Value.absent()
          : Value(students),
      teachingAssistants: teachingAssistants == null && nullToAbsent
          ? const Value.absent()
          : Value(teachingAssistants),
      enrollKey: enrollKey == null && nullToAbsent
          ? const Value.absent()
          : Value(enrollKey),
      totalStudents: totalStudents == null && nullToAbsent
          ? const Value.absent()
          : Value(totalStudents),
      totalTeachingAssistants: totalTeachingAssistants == null && nullToAbsent
          ? const Value.absent()
          : Value(totalTeachingAssistants),
      totalSessions: totalSessions == null && nullToAbsent
          ? const Value.absent()
          : Value(totalSessions),
      hasEnrollment: hasEnrollment == null && nullToAbsent
          ? const Value.absent()
          : Value(hasEnrollment),
      isEnrollmentOpen: isEnrollmentOpen == null && nullToAbsent
          ? const Value.absent()
          : Value(isEnrollmentOpen),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      recentSessions: recentSessions == null && nullToAbsent
          ? const Value.absent()
          : Value(recentSessions),
      isParticipant: isParticipant == null && nullToAbsent
          ? const Value.absent()
          : Value(isParticipant),
      localStoredAt: localStoredAt == null && nullToAbsent
          ? const Value.absent()
          : Value(localStoredAt),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
    );
  }

  factory Course.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Course(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String?>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      students: serializer.fromJson<String?>(json['students']),
      teachingAssistants:
          serializer.fromJson<String?>(json['teachingAssistants']),
      enrollKey: serializer.fromJson<String?>(json['enrollKey']),
      totalStudents: serializer.fromJson<int?>(json['totalStudents']),
      totalTeachingAssistants:
          serializer.fromJson<int?>(json['totalTeachingAssistants']),
      totalSessions: serializer.fromJson<int?>(json['totalSessions']),
      hasEnrollment: serializer.fromJson<bool?>(json['hasEnrollment']),
      isEnrollmentOpen: serializer.fromJson<bool?>(json['isEnrollmentOpen']),
      image: serializer.fromJson<String?>(json['image']),
      recentSessions: serializer.fromJson<String?>(json['recentSessions']),
      isParticipant: serializer.fromJson<bool?>(json['isParticipant']),
      localStoredAt: serializer.fromJson<DateTime?>(json['localStoredAt']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String?>(title),
      'description': serializer.toJson<String?>(description),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'students': serializer.toJson<String?>(students),
      'teachingAssistants': serializer.toJson<String?>(teachingAssistants),
      'enrollKey': serializer.toJson<String?>(enrollKey),
      'totalStudents': serializer.toJson<int?>(totalStudents),
      'totalTeachingAssistants':
          serializer.toJson<int?>(totalTeachingAssistants),
      'totalSessions': serializer.toJson<int?>(totalSessions),
      'hasEnrollment': serializer.toJson<bool?>(hasEnrollment),
      'isEnrollmentOpen': serializer.toJson<bool?>(isEnrollmentOpen),
      'image': serializer.toJson<String?>(image),
      'recentSessions': serializer.toJson<String?>(recentSessions),
      'isParticipant': serializer.toJson<bool?>(isParticipant),
      'localStoredAt': serializer.toJson<DateTime?>(localStoredAt),
      'createdBy': serializer.toJson<String?>(createdBy),
    };
  }

  Course copyWith(
          {String? id,
          Value<String?> title = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<DateTime?> startDate = const Value.absent(),
          Value<DateTime?> endDate = const Value.absent(),
          Value<String?> students = const Value.absent(),
          Value<String?> teachingAssistants = const Value.absent(),
          Value<String?> enrollKey = const Value.absent(),
          Value<int?> totalStudents = const Value.absent(),
          Value<int?> totalTeachingAssistants = const Value.absent(),
          Value<int?> totalSessions = const Value.absent(),
          Value<bool?> hasEnrollment = const Value.absent(),
          Value<bool?> isEnrollmentOpen = const Value.absent(),
          Value<String?> image = const Value.absent(),
          Value<String?> recentSessions = const Value.absent(),
          Value<bool?> isParticipant = const Value.absent(),
          Value<DateTime?> localStoredAt = const Value.absent(),
          Value<String?> createdBy = const Value.absent()}) =>
      Course(
        id: id ?? this.id,
        title: title.present ? title.value : this.title,
        description: description.present ? description.value : this.description,
        startDate: startDate.present ? startDate.value : this.startDate,
        endDate: endDate.present ? endDate.value : this.endDate,
        students: students.present ? students.value : this.students,
        teachingAssistants: teachingAssistants.present
            ? teachingAssistants.value
            : this.teachingAssistants,
        enrollKey: enrollKey.present ? enrollKey.value : this.enrollKey,
        totalStudents:
            totalStudents.present ? totalStudents.value : this.totalStudents,
        totalTeachingAssistants: totalTeachingAssistants.present
            ? totalTeachingAssistants.value
            : this.totalTeachingAssistants,
        totalSessions:
            totalSessions.present ? totalSessions.value : this.totalSessions,
        hasEnrollment:
            hasEnrollment.present ? hasEnrollment.value : this.hasEnrollment,
        isEnrollmentOpen: isEnrollmentOpen.present
            ? isEnrollmentOpen.value
            : this.isEnrollmentOpen,
        image: image.present ? image.value : this.image,
        recentSessions:
            recentSessions.present ? recentSessions.value : this.recentSessions,
        isParticipant:
            isParticipant.present ? isParticipant.value : this.isParticipant,
        localStoredAt:
            localStoredAt.present ? localStoredAt.value : this.localStoredAt,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
      );
  Course copyWithCompanion(CoursesCompanion data) {
    return Course(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
      students: data.students.present ? data.students.value : this.students,
      teachingAssistants: data.teachingAssistants.present
          ? data.teachingAssistants.value
          : this.teachingAssistants,
      enrollKey: data.enrollKey.present ? data.enrollKey.value : this.enrollKey,
      totalStudents: data.totalStudents.present
          ? data.totalStudents.value
          : this.totalStudents,
      totalTeachingAssistants: data.totalTeachingAssistants.present
          ? data.totalTeachingAssistants.value
          : this.totalTeachingAssistants,
      totalSessions: data.totalSessions.present
          ? data.totalSessions.value
          : this.totalSessions,
      hasEnrollment: data.hasEnrollment.present
          ? data.hasEnrollment.value
          : this.hasEnrollment,
      isEnrollmentOpen: data.isEnrollmentOpen.present
          ? data.isEnrollmentOpen.value
          : this.isEnrollmentOpen,
      image: data.image.present ? data.image.value : this.image,
      recentSessions: data.recentSessions.present
          ? data.recentSessions.value
          : this.recentSessions,
      isParticipant: data.isParticipant.present
          ? data.isParticipant.value
          : this.isParticipant,
      localStoredAt: data.localStoredAt.present
          ? data.localStoredAt.value
          : this.localStoredAt,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Course(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('students: $students, ')
          ..write('teachingAssistants: $teachingAssistants, ')
          ..write('enrollKey: $enrollKey, ')
          ..write('totalStudents: $totalStudents, ')
          ..write('totalTeachingAssistants: $totalTeachingAssistants, ')
          ..write('totalSessions: $totalSessions, ')
          ..write('hasEnrollment: $hasEnrollment, ')
          ..write('isEnrollmentOpen: $isEnrollmentOpen, ')
          ..write('image: $image, ')
          ..write('recentSessions: $recentSessions, ')
          ..write('isParticipant: $isParticipant, ')
          ..write('localStoredAt: $localStoredAt, ')
          ..write('createdBy: $createdBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      title,
      description,
      startDate,
      endDate,
      students,
      teachingAssistants,
      enrollKey,
      totalStudents,
      totalTeachingAssistants,
      totalSessions,
      hasEnrollment,
      isEnrollmentOpen,
      image,
      recentSessions,
      isParticipant,
      localStoredAt,
      createdBy);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Course &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.students == this.students &&
          other.teachingAssistants == this.teachingAssistants &&
          other.enrollKey == this.enrollKey &&
          other.totalStudents == this.totalStudents &&
          other.totalTeachingAssistants == this.totalTeachingAssistants &&
          other.totalSessions == this.totalSessions &&
          other.hasEnrollment == this.hasEnrollment &&
          other.isEnrollmentOpen == this.isEnrollmentOpen &&
          other.image == this.image &&
          other.recentSessions == this.recentSessions &&
          other.isParticipant == this.isParticipant &&
          other.localStoredAt == this.localStoredAt &&
          other.createdBy == this.createdBy);
}

class CoursesCompanion extends UpdateCompanion<Course> {
  final Value<String> id;
  final Value<String?> title;
  final Value<String?> description;
  final Value<DateTime?> startDate;
  final Value<DateTime?> endDate;
  final Value<String?> students;
  final Value<String?> teachingAssistants;
  final Value<String?> enrollKey;
  final Value<int?> totalStudents;
  final Value<int?> totalTeachingAssistants;
  final Value<int?> totalSessions;
  final Value<bool?> hasEnrollment;
  final Value<bool?> isEnrollmentOpen;
  final Value<String?> image;
  final Value<String?> recentSessions;
  final Value<bool?> isParticipant;
  final Value<DateTime?> localStoredAt;
  final Value<String?> createdBy;
  final Value<int> rowid;
  const CoursesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.students = const Value.absent(),
    this.teachingAssistants = const Value.absent(),
    this.enrollKey = const Value.absent(),
    this.totalStudents = const Value.absent(),
    this.totalTeachingAssistants = const Value.absent(),
    this.totalSessions = const Value.absent(),
    this.hasEnrollment = const Value.absent(),
    this.isEnrollmentOpen = const Value.absent(),
    this.image = const Value.absent(),
    this.recentSessions = const Value.absent(),
    this.isParticipant = const Value.absent(),
    this.localStoredAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CoursesCompanion.insert({
    required String id,
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.students = const Value.absent(),
    this.teachingAssistants = const Value.absent(),
    this.enrollKey = const Value.absent(),
    this.totalStudents = const Value.absent(),
    this.totalTeachingAssistants = const Value.absent(),
    this.totalSessions = const Value.absent(),
    this.hasEnrollment = const Value.absent(),
    this.isEnrollmentOpen = const Value.absent(),
    this.image = const Value.absent(),
    this.recentSessions = const Value.absent(),
    this.isParticipant = const Value.absent(),
    this.localStoredAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Course> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<String>? students,
    Expression<String>? teachingAssistants,
    Expression<String>? enrollKey,
    Expression<int>? totalStudents,
    Expression<int>? totalTeachingAssistants,
    Expression<int>? totalSessions,
    Expression<bool>? hasEnrollment,
    Expression<bool>? isEnrollmentOpen,
    Expression<String>? image,
    Expression<String>? recentSessions,
    Expression<bool>? isParticipant,
    Expression<DateTime>? localStoredAt,
    Expression<String>? createdBy,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (students != null) 'students': students,
      if (teachingAssistants != null) 'teaching_assistants': teachingAssistants,
      if (enrollKey != null) 'enroll_key': enrollKey,
      if (totalStudents != null) 'total_students': totalStudents,
      if (totalTeachingAssistants != null)
        'total_teaching_assistants': totalTeachingAssistants,
      if (totalSessions != null) 'total_sessions': totalSessions,
      if (hasEnrollment != null) 'has_enrollment': hasEnrollment,
      if (isEnrollmentOpen != null) 'is_enrollment_open': isEnrollmentOpen,
      if (image != null) 'image': image,
      if (recentSessions != null) 'recent_sessions': recentSessions,
      if (isParticipant != null) 'is_participant': isParticipant,
      if (localStoredAt != null) 'local_stored_at': localStoredAt,
      if (createdBy != null) 'created_by': createdBy,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CoursesCompanion copyWith(
      {Value<String>? id,
      Value<String?>? title,
      Value<String?>? description,
      Value<DateTime?>? startDate,
      Value<DateTime?>? endDate,
      Value<String?>? students,
      Value<String?>? teachingAssistants,
      Value<String?>? enrollKey,
      Value<int?>? totalStudents,
      Value<int?>? totalTeachingAssistants,
      Value<int?>? totalSessions,
      Value<bool?>? hasEnrollment,
      Value<bool?>? isEnrollmentOpen,
      Value<String?>? image,
      Value<String?>? recentSessions,
      Value<bool?>? isParticipant,
      Value<DateTime?>? localStoredAt,
      Value<String?>? createdBy,
      Value<int>? rowid}) {
    return CoursesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      students: students ?? this.students,
      teachingAssistants: teachingAssistants ?? this.teachingAssistants,
      enrollKey: enrollKey ?? this.enrollKey,
      totalStudents: totalStudents ?? this.totalStudents,
      totalTeachingAssistants:
          totalTeachingAssistants ?? this.totalTeachingAssistants,
      totalSessions: totalSessions ?? this.totalSessions,
      hasEnrollment: hasEnrollment ?? this.hasEnrollment,
      isEnrollmentOpen: isEnrollmentOpen ?? this.isEnrollmentOpen,
      image: image ?? this.image,
      recentSessions: recentSessions ?? this.recentSessions,
      isParticipant: isParticipant ?? this.isParticipant,
      localStoredAt: localStoredAt ?? this.localStoredAt,
      createdBy: createdBy ?? this.createdBy,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (students.present) {
      map['students'] = Variable<String>(students.value);
    }
    if (teachingAssistants.present) {
      map['teaching_assistants'] = Variable<String>(teachingAssistants.value);
    }
    if (enrollKey.present) {
      map['enroll_key'] = Variable<String>(enrollKey.value);
    }
    if (totalStudents.present) {
      map['total_students'] = Variable<int>(totalStudents.value);
    }
    if (totalTeachingAssistants.present) {
      map['total_teaching_assistants'] =
          Variable<int>(totalTeachingAssistants.value);
    }
    if (totalSessions.present) {
      map['total_sessions'] = Variable<int>(totalSessions.value);
    }
    if (hasEnrollment.present) {
      map['has_enrollment'] = Variable<bool>(hasEnrollment.value);
    }
    if (isEnrollmentOpen.present) {
      map['is_enrollment_open'] = Variable<bool>(isEnrollmentOpen.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (recentSessions.present) {
      map['recent_sessions'] = Variable<String>(recentSessions.value);
    }
    if (isParticipant.present) {
      map['is_participant'] = Variable<bool>(isParticipant.value);
    }
    if (localStoredAt.present) {
      map['local_stored_at'] = Variable<DateTime>(localStoredAt.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CoursesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('students: $students, ')
          ..write('teachingAssistants: $teachingAssistants, ')
          ..write('enrollKey: $enrollKey, ')
          ..write('totalStudents: $totalStudents, ')
          ..write('totalTeachingAssistants: $totalTeachingAssistants, ')
          ..write('totalSessions: $totalSessions, ')
          ..write('hasEnrollment: $hasEnrollment, ')
          ..write('isEnrollmentOpen: $isEnrollmentOpen, ')
          ..write('image: $image, ')
          ..write('recentSessions: $recentSessions, ')
          ..write('isParticipant: $isParticipant, ')
          ..write('localStoredAt: $localStoredAt, ')
          ..write('createdBy: $createdBy, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$CourseDatabase extends GeneratedDatabase {
  _$CourseDatabase(QueryExecutor e) : super(e);
  $CourseDatabaseManager get managers => $CourseDatabaseManager(this);
  late final $CoursesTable courses = $CoursesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [courses];
}

typedef $$CoursesTableCreateCompanionBuilder = CoursesCompanion Function({
  required String id,
  Value<String?> title,
  Value<String?> description,
  Value<DateTime?> startDate,
  Value<DateTime?> endDate,
  Value<String?> students,
  Value<String?> teachingAssistants,
  Value<String?> enrollKey,
  Value<int?> totalStudents,
  Value<int?> totalTeachingAssistants,
  Value<int?> totalSessions,
  Value<bool?> hasEnrollment,
  Value<bool?> isEnrollmentOpen,
  Value<String?> image,
  Value<String?> recentSessions,
  Value<bool?> isParticipant,
  Value<DateTime?> localStoredAt,
  Value<String?> createdBy,
  Value<int> rowid,
});
typedef $$CoursesTableUpdateCompanionBuilder = CoursesCompanion Function({
  Value<String> id,
  Value<String?> title,
  Value<String?> description,
  Value<DateTime?> startDate,
  Value<DateTime?> endDate,
  Value<String?> students,
  Value<String?> teachingAssistants,
  Value<String?> enrollKey,
  Value<int?> totalStudents,
  Value<int?> totalTeachingAssistants,
  Value<int?> totalSessions,
  Value<bool?> hasEnrollment,
  Value<bool?> isEnrollmentOpen,
  Value<String?> image,
  Value<String?> recentSessions,
  Value<bool?> isParticipant,
  Value<DateTime?> localStoredAt,
  Value<String?> createdBy,
  Value<int> rowid,
});

class $$CoursesTableFilterComposer
    extends Composer<_$CourseDatabase, $CoursesTable> {
  $$CoursesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endDate => $composableBuilder(
      column: $table.endDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get students => $composableBuilder(
      column: $table.students, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get teachingAssistants => $composableBuilder(
      column: $table.teachingAssistants,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enrollKey => $composableBuilder(
      column: $table.enrollKey, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalStudents => $composableBuilder(
      column: $table.totalStudents, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalTeachingAssistants => $composableBuilder(
      column: $table.totalTeachingAssistants,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalSessions => $composableBuilder(
      column: $table.totalSessions, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get hasEnrollment => $composableBuilder(
      column: $table.hasEnrollment, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isEnrollmentOpen => $composableBuilder(
      column: $table.isEnrollmentOpen,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get recentSessions => $composableBuilder(
      column: $table.recentSessions,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isParticipant => $composableBuilder(
      column: $table.isParticipant, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get localStoredAt => $composableBuilder(
      column: $table.localStoredAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnFilters(column));
}

class $$CoursesTableOrderingComposer
    extends Composer<_$CourseDatabase, $CoursesTable> {
  $$CoursesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
      column: $table.endDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get students => $composableBuilder(
      column: $table.students, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get teachingAssistants => $composableBuilder(
      column: $table.teachingAssistants,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enrollKey => $composableBuilder(
      column: $table.enrollKey, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalStudents => $composableBuilder(
      column: $table.totalStudents,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalTeachingAssistants => $composableBuilder(
      column: $table.totalTeachingAssistants,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalSessions => $composableBuilder(
      column: $table.totalSessions,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get hasEnrollment => $composableBuilder(
      column: $table.hasEnrollment,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isEnrollmentOpen => $composableBuilder(
      column: $table.isEnrollmentOpen,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get recentSessions => $composableBuilder(
      column: $table.recentSessions,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isParticipant => $composableBuilder(
      column: $table.isParticipant,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get localStoredAt => $composableBuilder(
      column: $table.localStoredAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnOrderings(column));
}

class $$CoursesTableAnnotationComposer
    extends Composer<_$CourseDatabase, $CoursesTable> {
  $$CoursesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  GeneratedColumn<String> get students =>
      $composableBuilder(column: $table.students, builder: (column) => column);

  GeneratedColumn<String> get teachingAssistants => $composableBuilder(
      column: $table.teachingAssistants, builder: (column) => column);

  GeneratedColumn<String> get enrollKey =>
      $composableBuilder(column: $table.enrollKey, builder: (column) => column);

  GeneratedColumn<int> get totalStudents => $composableBuilder(
      column: $table.totalStudents, builder: (column) => column);

  GeneratedColumn<int> get totalTeachingAssistants => $composableBuilder(
      column: $table.totalTeachingAssistants, builder: (column) => column);

  GeneratedColumn<int> get totalSessions => $composableBuilder(
      column: $table.totalSessions, builder: (column) => column);

  GeneratedColumn<bool> get hasEnrollment => $composableBuilder(
      column: $table.hasEnrollment, builder: (column) => column);

  GeneratedColumn<bool> get isEnrollmentOpen => $composableBuilder(
      column: $table.isEnrollmentOpen, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<String> get recentSessions => $composableBuilder(
      column: $table.recentSessions, builder: (column) => column);

  GeneratedColumn<bool> get isParticipant => $composableBuilder(
      column: $table.isParticipant, builder: (column) => column);

  GeneratedColumn<DateTime> get localStoredAt => $composableBuilder(
      column: $table.localStoredAt, builder: (column) => column);

  GeneratedColumn<String> get createdBy =>
      $composableBuilder(column: $table.createdBy, builder: (column) => column);
}

class $$CoursesTableTableManager extends RootTableManager<
    _$CourseDatabase,
    $CoursesTable,
    Course,
    $$CoursesTableFilterComposer,
    $$CoursesTableOrderingComposer,
    $$CoursesTableAnnotationComposer,
    $$CoursesTableCreateCompanionBuilder,
    $$CoursesTableUpdateCompanionBuilder,
    (Course, BaseReferences<_$CourseDatabase, $CoursesTable, Course>),
    Course,
    PrefetchHooks Function()> {
  $$CoursesTableTableManager(_$CourseDatabase db, $CoursesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CoursesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CoursesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CoursesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<DateTime?> startDate = const Value.absent(),
            Value<DateTime?> endDate = const Value.absent(),
            Value<String?> students = const Value.absent(),
            Value<String?> teachingAssistants = const Value.absent(),
            Value<String?> enrollKey = const Value.absent(),
            Value<int?> totalStudents = const Value.absent(),
            Value<int?> totalTeachingAssistants = const Value.absent(),
            Value<int?> totalSessions = const Value.absent(),
            Value<bool?> hasEnrollment = const Value.absent(),
            Value<bool?> isEnrollmentOpen = const Value.absent(),
            Value<String?> image = const Value.absent(),
            Value<String?> recentSessions = const Value.absent(),
            Value<bool?> isParticipant = const Value.absent(),
            Value<DateTime?> localStoredAt = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CoursesCompanion(
            id: id,
            title: title,
            description: description,
            startDate: startDate,
            endDate: endDate,
            students: students,
            teachingAssistants: teachingAssistants,
            enrollKey: enrollKey,
            totalStudents: totalStudents,
            totalTeachingAssistants: totalTeachingAssistants,
            totalSessions: totalSessions,
            hasEnrollment: hasEnrollment,
            isEnrollmentOpen: isEnrollmentOpen,
            image: image,
            recentSessions: recentSessions,
            isParticipant: isParticipant,
            localStoredAt: localStoredAt,
            createdBy: createdBy,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> title = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<DateTime?> startDate = const Value.absent(),
            Value<DateTime?> endDate = const Value.absent(),
            Value<String?> students = const Value.absent(),
            Value<String?> teachingAssistants = const Value.absent(),
            Value<String?> enrollKey = const Value.absent(),
            Value<int?> totalStudents = const Value.absent(),
            Value<int?> totalTeachingAssistants = const Value.absent(),
            Value<int?> totalSessions = const Value.absent(),
            Value<bool?> hasEnrollment = const Value.absent(),
            Value<bool?> isEnrollmentOpen = const Value.absent(),
            Value<String?> image = const Value.absent(),
            Value<String?> recentSessions = const Value.absent(),
            Value<bool?> isParticipant = const Value.absent(),
            Value<DateTime?> localStoredAt = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CoursesCompanion.insert(
            id: id,
            title: title,
            description: description,
            startDate: startDate,
            endDate: endDate,
            students: students,
            teachingAssistants: teachingAssistants,
            enrollKey: enrollKey,
            totalStudents: totalStudents,
            totalTeachingAssistants: totalTeachingAssistants,
            totalSessions: totalSessions,
            hasEnrollment: hasEnrollment,
            isEnrollmentOpen: isEnrollmentOpen,
            image: image,
            recentSessions: recentSessions,
            isParticipant: isParticipant,
            localStoredAt: localStoredAt,
            createdBy: createdBy,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CoursesTableProcessedTableManager = ProcessedTableManager<
    _$CourseDatabase,
    $CoursesTable,
    Course,
    $$CoursesTableFilterComposer,
    $$CoursesTableOrderingComposer,
    $$CoursesTableAnnotationComposer,
    $$CoursesTableCreateCompanionBuilder,
    $$CoursesTableUpdateCompanionBuilder,
    (Course, BaseReferences<_$CourseDatabase, $CoursesTable, Course>),
    Course,
    PrefetchHooks Function()>;

class $CourseDatabaseManager {
  final _$CourseDatabase _db;
  $CourseDatabaseManager(this._db);
  $$CoursesTableTableManager get courses =>
      $$CoursesTableTableManager(_db, _db.courses);
}

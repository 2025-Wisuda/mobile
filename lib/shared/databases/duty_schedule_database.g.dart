// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duty_schedule_database.dart';

// ignore_for_file: type=lint
class $DutySchedulesTable extends DutySchedules
    with TableInfo<$DutySchedulesTable, DutySchedule> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DutySchedulesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _teachingAssistantsMeta =
      const VerificationMeta('teachingAssistants');
  @override
  late final GeneratedColumn<String> teachingAssistants =
      GeneratedColumn<String>(
        'teaching_assistants',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _daysMeta = const VerificationMeta('days');
  @override
  late final GeneratedColumn<String> days = GeneratedColumn<String>(
    'days',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _startDateMeta = const VerificationMeta(
    'startDate',
  );
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
    'start_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _endDateMeta = const VerificationMeta(
    'endDate',
  );
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
    'end_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _startTimeMeta = const VerificationMeta(
    'startTime',
  );
  @override
  late final GeneratedColumn<String> startTime = GeneratedColumn<String>(
    'start_time',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _endTimeMeta = const VerificationMeta(
    'endTime',
  );
  @override
  late final GeneratedColumn<String> endTime = GeneratedColumn<String>(
    'end_time',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    teachingAssistants,
    days,
    startDate,
    endDate,
    startTime,
    endTime,
    isActive,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'duty_schedules';
  @override
  VerificationContext validateIntegrity(
    Insertable<DutySchedule> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('teaching_assistants')) {
      context.handle(
        _teachingAssistantsMeta,
        teachingAssistants.isAcceptableOrUnknown(
          data['teaching_assistants']!,
          _teachingAssistantsMeta,
        ),
      );
    }
    if (data.containsKey('days')) {
      context.handle(
        _daysMeta,
        days.isAcceptableOrUnknown(data['days']!, _daysMeta),
      );
    }
    if (data.containsKey('start_date')) {
      context.handle(
        _startDateMeta,
        startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta),
      );
    }
    if (data.containsKey('end_date')) {
      context.handle(
        _endDateMeta,
        endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta),
      );
    }
    if (data.containsKey('start_time')) {
      context.handle(
        _startTimeMeta,
        startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta),
      );
    }
    if (data.containsKey('end_time')) {
      context.handle(
        _endTimeMeta,
        endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DutySchedule map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DutySchedule(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      teachingAssistants: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}teaching_assistants'],
      ),
      days: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}days'],
      ),
      startDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start_date'],
      ),
      endDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end_date'],
      ),
      startTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}start_time'],
      ),
      endTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}end_time'],
      ),
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      ),
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
    );
  }

  @override
  $DutySchedulesTable createAlias(String alias) {
    return $DutySchedulesTable(attachedDatabase, alias);
  }
}

class DutySchedule extends DataClass implements Insertable<DutySchedule> {
  final String id;
  final String? teachingAssistants;
  final String? days;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? startTime;
  final String? endTime;
  final bool? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  const DutySchedule({
    required this.id,
    this.teachingAssistants,
    this.days,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
    this.isActive,
    this.createdAt,
    this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || teachingAssistants != null) {
      map['teaching_assistants'] = Variable<String>(teachingAssistants);
    }
    if (!nullToAbsent || days != null) {
      map['days'] = Variable<String>(days);
    }
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<DateTime>(startDate);
    }
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime>(endDate);
    }
    if (!nullToAbsent || startTime != null) {
      map['start_time'] = Variable<String>(startTime);
    }
    if (!nullToAbsent || endTime != null) {
      map['end_time'] = Variable<String>(endTime);
    }
    if (!nullToAbsent || isActive != null) {
      map['is_active'] = Variable<bool>(isActive);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  DutySchedulesCompanion toCompanion(bool nullToAbsent) {
    return DutySchedulesCompanion(
      id: Value(id),
      teachingAssistants:
          teachingAssistants == null && nullToAbsent
              ? const Value.absent()
              : Value(teachingAssistants),
      days: days == null && nullToAbsent ? const Value.absent() : Value(days),
      startDate:
          startDate == null && nullToAbsent
              ? const Value.absent()
              : Value(startDate),
      endDate:
          endDate == null && nullToAbsent
              ? const Value.absent()
              : Value(endDate),
      startTime:
          startTime == null && nullToAbsent
              ? const Value.absent()
              : Value(startTime),
      endTime:
          endTime == null && nullToAbsent
              ? const Value.absent()
              : Value(endTime),
      isActive:
          isActive == null && nullToAbsent
              ? const Value.absent()
              : Value(isActive),
      createdAt:
          createdAt == null && nullToAbsent
              ? const Value.absent()
              : Value(createdAt),
      updatedAt:
          updatedAt == null && nullToAbsent
              ? const Value.absent()
              : Value(updatedAt),
    );
  }

  factory DutySchedule.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DutySchedule(
      id: serializer.fromJson<String>(json['id']),
      teachingAssistants: serializer.fromJson<String?>(
        json['teachingAssistants'],
      ),
      days: serializer.fromJson<String?>(json['days']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      startTime: serializer.fromJson<String?>(json['startTime']),
      endTime: serializer.fromJson<String?>(json['endTime']),
      isActive: serializer.fromJson<bool?>(json['isActive']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'teachingAssistants': serializer.toJson<String?>(teachingAssistants),
      'days': serializer.toJson<String?>(days),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'startTime': serializer.toJson<String?>(startTime),
      'endTime': serializer.toJson<String?>(endTime),
      'isActive': serializer.toJson<bool?>(isActive),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  DutySchedule copyWith({
    String? id,
    Value<String?> teachingAssistants = const Value.absent(),
    Value<String?> days = const Value.absent(),
    Value<DateTime?> startDate = const Value.absent(),
    Value<DateTime?> endDate = const Value.absent(),
    Value<String?> startTime = const Value.absent(),
    Value<String?> endTime = const Value.absent(),
    Value<bool?> isActive = const Value.absent(),
    Value<DateTime?> createdAt = const Value.absent(),
    Value<DateTime?> updatedAt = const Value.absent(),
  }) => DutySchedule(
    id: id ?? this.id,
    teachingAssistants:
        teachingAssistants.present
            ? teachingAssistants.value
            : this.teachingAssistants,
    days: days.present ? days.value : this.days,
    startDate: startDate.present ? startDate.value : this.startDate,
    endDate: endDate.present ? endDate.value : this.endDate,
    startTime: startTime.present ? startTime.value : this.startTime,
    endTime: endTime.present ? endTime.value : this.endTime,
    isActive: isActive.present ? isActive.value : this.isActive,
    createdAt: createdAt.present ? createdAt.value : this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
  );
  DutySchedule copyWithCompanion(DutySchedulesCompanion data) {
    return DutySchedule(
      id: data.id.present ? data.id.value : this.id,
      teachingAssistants:
          data.teachingAssistants.present
              ? data.teachingAssistants.value
              : this.teachingAssistants,
      days: data.days.present ? data.days.value : this.days,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      endTime: data.endTime.present ? data.endTime.value : this.endTime,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DutySchedule(')
          ..write('id: $id, ')
          ..write('teachingAssistants: $teachingAssistants, ')
          ..write('days: $days, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    teachingAssistants,
    days,
    startDate,
    endDate,
    startTime,
    endTime,
    isActive,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DutySchedule &&
          other.id == this.id &&
          other.teachingAssistants == this.teachingAssistants &&
          other.days == this.days &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class DutySchedulesCompanion extends UpdateCompanion<DutySchedule> {
  final Value<String> id;
  final Value<String?> teachingAssistants;
  final Value<String?> days;
  final Value<DateTime?> startDate;
  final Value<DateTime?> endDate;
  final Value<String?> startTime;
  final Value<String?> endTime;
  final Value<bool?> isActive;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<int> rowid;
  const DutySchedulesCompanion({
    this.id = const Value.absent(),
    this.teachingAssistants = const Value.absent(),
    this.days = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DutySchedulesCompanion.insert({
    required String id,
    this.teachingAssistants = const Value.absent(),
    this.days = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<DutySchedule> custom({
    Expression<String>? id,
    Expression<String>? teachingAssistants,
    Expression<String>? days,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<String>? startTime,
    Expression<String>? endTime,
    Expression<bool>? isActive,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (teachingAssistants != null) 'teaching_assistants': teachingAssistants,
      if (days != null) 'days': days,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DutySchedulesCompanion copyWith({
    Value<String>? id,
    Value<String?>? teachingAssistants,
    Value<String?>? days,
    Value<DateTime?>? startDate,
    Value<DateTime?>? endDate,
    Value<String?>? startTime,
    Value<String?>? endTime,
    Value<bool?>? isActive,
    Value<DateTime?>? createdAt,
    Value<DateTime?>? updatedAt,
    Value<int>? rowid,
  }) {
    return DutySchedulesCompanion(
      id: id ?? this.id,
      teachingAssistants: teachingAssistants ?? this.teachingAssistants,
      days: days ?? this.days,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (teachingAssistants.present) {
      map['teaching_assistants'] = Variable<String>(teachingAssistants.value);
    }
    if (days.present) {
      map['days'] = Variable<String>(days.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<String>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<String>(endTime.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DutySchedulesCompanion(')
          ..write('id: $id, ')
          ..write('teachingAssistants: $teachingAssistants, ')
          ..write('days: $days, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$DutyScheduleDatabase extends GeneratedDatabase {
  _$DutyScheduleDatabase(QueryExecutor e) : super(e);
  $DutyScheduleDatabaseManager get managers =>
      $DutyScheduleDatabaseManager(this);
  late final $DutySchedulesTable dutySchedules = $DutySchedulesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dutySchedules];
}

typedef $$DutySchedulesTableCreateCompanionBuilder =
    DutySchedulesCompanion Function({
      required String id,
      Value<String?> teachingAssistants,
      Value<String?> days,
      Value<DateTime?> startDate,
      Value<DateTime?> endDate,
      Value<String?> startTime,
      Value<String?> endTime,
      Value<bool?> isActive,
      Value<DateTime?> createdAt,
      Value<DateTime?> updatedAt,
      Value<int> rowid,
    });
typedef $$DutySchedulesTableUpdateCompanionBuilder =
    DutySchedulesCompanion Function({
      Value<String> id,
      Value<String?> teachingAssistants,
      Value<String?> days,
      Value<DateTime?> startDate,
      Value<DateTime?> endDate,
      Value<String?> startTime,
      Value<String?> endTime,
      Value<bool?> isActive,
      Value<DateTime?> createdAt,
      Value<DateTime?> updatedAt,
      Value<int> rowid,
    });

class $$DutySchedulesTableFilterComposer
    extends Composer<_$DutyScheduleDatabase, $DutySchedulesTable> {
  $$DutySchedulesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get teachingAssistants => $composableBuilder(
    column: $table.teachingAssistants,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get days => $composableBuilder(
    column: $table.days,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get startTime => $composableBuilder(
    column: $table.startTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get endTime => $composableBuilder(
    column: $table.endTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DutySchedulesTableOrderingComposer
    extends Composer<_$DutyScheduleDatabase, $DutySchedulesTable> {
  $$DutySchedulesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get teachingAssistants => $composableBuilder(
    column: $table.teachingAssistants,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get days => $composableBuilder(
    column: $table.days,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get startTime => $composableBuilder(
    column: $table.startTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get endTime => $composableBuilder(
    column: $table.endTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DutySchedulesTableAnnotationComposer
    extends Composer<_$DutyScheduleDatabase, $DutySchedulesTable> {
  $$DutySchedulesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get teachingAssistants => $composableBuilder(
    column: $table.teachingAssistants,
    builder: (column) => column,
  );

  GeneratedColumn<String> get days =>
      $composableBuilder(column: $table.days, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  GeneratedColumn<String> get startTime =>
      $composableBuilder(column: $table.startTime, builder: (column) => column);

  GeneratedColumn<String> get endTime =>
      $composableBuilder(column: $table.endTime, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$DutySchedulesTableTableManager
    extends
        RootTableManager<
          _$DutyScheduleDatabase,
          $DutySchedulesTable,
          DutySchedule,
          $$DutySchedulesTableFilterComposer,
          $$DutySchedulesTableOrderingComposer,
          $$DutySchedulesTableAnnotationComposer,
          $$DutySchedulesTableCreateCompanionBuilder,
          $$DutySchedulesTableUpdateCompanionBuilder,
          (
            DutySchedule,
            BaseReferences<
              _$DutyScheduleDatabase,
              $DutySchedulesTable,
              DutySchedule
            >,
          ),
          DutySchedule,
          PrefetchHooks Function()
        > {
  $$DutySchedulesTableTableManager(
    _$DutyScheduleDatabase db,
    $DutySchedulesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$DutySchedulesTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () =>
                  $$DutySchedulesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$DutySchedulesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String?> teachingAssistants = const Value.absent(),
                Value<String?> days = const Value.absent(),
                Value<DateTime?> startDate = const Value.absent(),
                Value<DateTime?> endDate = const Value.absent(),
                Value<String?> startTime = const Value.absent(),
                Value<String?> endTime = const Value.absent(),
                Value<bool?> isActive = const Value.absent(),
                Value<DateTime?> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DutySchedulesCompanion(
                id: id,
                teachingAssistants: teachingAssistants,
                days: days,
                startDate: startDate,
                endDate: endDate,
                startTime: startTime,
                endTime: endTime,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String?> teachingAssistants = const Value.absent(),
                Value<String?> days = const Value.absent(),
                Value<DateTime?> startDate = const Value.absent(),
                Value<DateTime?> endDate = const Value.absent(),
                Value<String?> startTime = const Value.absent(),
                Value<String?> endTime = const Value.absent(),
                Value<bool?> isActive = const Value.absent(),
                Value<DateTime?> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DutySchedulesCompanion.insert(
                id: id,
                teachingAssistants: teachingAssistants,
                days: days,
                startDate: startDate,
                endDate: endDate,
                startTime: startTime,
                endTime: endTime,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DutySchedulesTableProcessedTableManager =
    ProcessedTableManager<
      _$DutyScheduleDatabase,
      $DutySchedulesTable,
      DutySchedule,
      $$DutySchedulesTableFilterComposer,
      $$DutySchedulesTableOrderingComposer,
      $$DutySchedulesTableAnnotationComposer,
      $$DutySchedulesTableCreateCompanionBuilder,
      $$DutySchedulesTableUpdateCompanionBuilder,
      (
        DutySchedule,
        BaseReferences<
          _$DutyScheduleDatabase,
          $DutySchedulesTable,
          DutySchedule
        >,
      ),
      DutySchedule,
      PrefetchHooks Function()
    >;

class $DutyScheduleDatabaseManager {
  final _$DutyScheduleDatabase _db;
  $DutyScheduleDatabaseManager(this._db);
  $$DutySchedulesTableTableManager get dutySchedules =>
      $$DutySchedulesTableTableManager(_db, _db.dutySchedules);
}

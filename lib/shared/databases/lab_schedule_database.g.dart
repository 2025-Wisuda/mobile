// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_schedule_database.dart';

// ignore_for_file: type=lint
class $LabSchedulesTable extends LabSchedules
    with TableInfo<$LabSchedulesTable, LabSchedule> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LabSchedulesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _startTimeMeta =
      const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<String> startTime = GeneratedColumn<String>(
      'start_time', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _endTimeMeta =
      const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<String> endTime = GeneratedColumn<String>(
      'end_time', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _detailMeta = const VerificationMeta('detail');
  @override
  late final GeneratedColumn<String> detail = GeneratedColumn<String>(
      'detail', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _localStoredAtMeta =
      const VerificationMeta('localStoredAt');
  @override
  late final GeneratedColumn<DateTime> localStoredAt =
      GeneratedColumn<DateTime>('local_stored_at', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        date,
        startTime,
        endTime,
        type,
        detail,
        createdBy,
        updatedAt,
        localStoredAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lab_schedules';
  @override
  VerificationContext validateIntegrity(Insertable<LabSchedule> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('detail')) {
      context.handle(_detailMeta,
          detail.isAcceptableOrUnknown(data['detail']!, _detailMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('local_stored_at')) {
      context.handle(
          _localStoredAtMeta,
          localStoredAt.isAcceptableOrUnknown(
              data['local_stored_at']!, _localStoredAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LabSchedule map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LabSchedule(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date']),
      startTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}start_time']),
      endTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}end_time']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      detail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}detail']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      localStoredAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}local_stored_at']),
    );
  }

  @override
  $LabSchedulesTable createAlias(String alias) {
    return $LabSchedulesTable(attachedDatabase, alias);
  }
}

class LabSchedule extends DataClass implements Insertable<LabSchedule> {
  final String id;
  final DateTime? date;
  final String? startTime;
  final String? endTime;
  final String? type;
  final String? detail;
  final String? createdBy;
  final DateTime? updatedAt;
  final DateTime? localStoredAt;
  const LabSchedule(
      {required this.id,
      this.date,
      this.startTime,
      this.endTime,
      this.type,
      this.detail,
      this.createdBy,
      this.updatedAt,
      this.localStoredAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<DateTime>(date);
    }
    if (!nullToAbsent || startTime != null) {
      map['start_time'] = Variable<String>(startTime);
    }
    if (!nullToAbsent || endTime != null) {
      map['end_time'] = Variable<String>(endTime);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || detail != null) {
      map['detail'] = Variable<String>(detail);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || localStoredAt != null) {
      map['local_stored_at'] = Variable<DateTime>(localStoredAt);
    }
    return map;
  }

  LabSchedulesCompanion toCompanion(bool nullToAbsent) {
    return LabSchedulesCompanion(
      id: Value(id),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      startTime: startTime == null && nullToAbsent
          ? const Value.absent()
          : Value(startTime),
      endTime: endTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endTime),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      detail:
          detail == null && nullToAbsent ? const Value.absent() : Value(detail),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      localStoredAt: localStoredAt == null && nullToAbsent
          ? const Value.absent()
          : Value(localStoredAt),
    );
  }

  factory LabSchedule.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LabSchedule(
      id: serializer.fromJson<String>(json['id']),
      date: serializer.fromJson<DateTime?>(json['date']),
      startTime: serializer.fromJson<String?>(json['startTime']),
      endTime: serializer.fromJson<String?>(json['endTime']),
      type: serializer.fromJson<String?>(json['type']),
      detail: serializer.fromJson<String?>(json['detail']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      localStoredAt: serializer.fromJson<DateTime?>(json['localStoredAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'date': serializer.toJson<DateTime?>(date),
      'startTime': serializer.toJson<String?>(startTime),
      'endTime': serializer.toJson<String?>(endTime),
      'type': serializer.toJson<String?>(type),
      'detail': serializer.toJson<String?>(detail),
      'createdBy': serializer.toJson<String?>(createdBy),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'localStoredAt': serializer.toJson<DateTime?>(localStoredAt),
    };
  }

  LabSchedule copyWith(
          {String? id,
          Value<DateTime?> date = const Value.absent(),
          Value<String?> startTime = const Value.absent(),
          Value<String?> endTime = const Value.absent(),
          Value<String?> type = const Value.absent(),
          Value<String?> detail = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent(),
          Value<DateTime?> localStoredAt = const Value.absent()}) =>
      LabSchedule(
        id: id ?? this.id,
        date: date.present ? date.value : this.date,
        startTime: startTime.present ? startTime.value : this.startTime,
        endTime: endTime.present ? endTime.value : this.endTime,
        type: type.present ? type.value : this.type,
        detail: detail.present ? detail.value : this.detail,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        localStoredAt:
            localStoredAt.present ? localStoredAt.value : this.localStoredAt,
      );
  LabSchedule copyWithCompanion(LabSchedulesCompanion data) {
    return LabSchedule(
      id: data.id.present ? data.id.value : this.id,
      date: data.date.present ? data.date.value : this.date,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      endTime: data.endTime.present ? data.endTime.value : this.endTime,
      type: data.type.present ? data.type.value : this.type,
      detail: data.detail.present ? data.detail.value : this.detail,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      localStoredAt: data.localStoredAt.present
          ? data.localStoredAt.value
          : this.localStoredAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LabSchedule(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('type: $type, ')
          ..write('detail: $detail, ')
          ..write('createdBy: $createdBy, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('localStoredAt: $localStoredAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, date, startTime, endTime, type, detail,
      createdBy, updatedAt, localStoredAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LabSchedule &&
          other.id == this.id &&
          other.date == this.date &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.type == this.type &&
          other.detail == this.detail &&
          other.createdBy == this.createdBy &&
          other.updatedAt == this.updatedAt &&
          other.localStoredAt == this.localStoredAt);
}

class LabSchedulesCompanion extends UpdateCompanion<LabSchedule> {
  final Value<String> id;
  final Value<DateTime?> date;
  final Value<String?> startTime;
  final Value<String?> endTime;
  final Value<String?> type;
  final Value<String?> detail;
  final Value<String?> createdBy;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> localStoredAt;
  final Value<int> rowid;
  const LabSchedulesCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.type = const Value.absent(),
    this.detail = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.localStoredAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LabSchedulesCompanion.insert({
    required String id,
    this.date = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.type = const Value.absent(),
    this.detail = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.localStoredAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<LabSchedule> custom({
    Expression<String>? id,
    Expression<DateTime>? date,
    Expression<String>? startTime,
    Expression<String>? endTime,
    Expression<String>? type,
    Expression<String>? detail,
    Expression<String>? createdBy,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? localStoredAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (type != null) 'type': type,
      if (detail != null) 'detail': detail,
      if (createdBy != null) 'created_by': createdBy,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (localStoredAt != null) 'local_stored_at': localStoredAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LabSchedulesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime?>? date,
      Value<String?>? startTime,
      Value<String?>? endTime,
      Value<String?>? type,
      Value<String?>? detail,
      Value<String?>? createdBy,
      Value<DateTime?>? updatedAt,
      Value<DateTime?>? localStoredAt,
      Value<int>? rowid}) {
    return LabSchedulesCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      type: type ?? this.type,
      detail: detail ?? this.detail,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      localStoredAt: localStoredAt ?? this.localStoredAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<String>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<String>(endTime.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (detail.present) {
      map['detail'] = Variable<String>(detail.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (localStoredAt.present) {
      map['local_stored_at'] = Variable<DateTime>(localStoredAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LabSchedulesCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('type: $type, ')
          ..write('detail: $detail, ')
          ..write('createdBy: $createdBy, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('localStoredAt: $localStoredAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$LabScheduleDatabase extends GeneratedDatabase {
  _$LabScheduleDatabase(QueryExecutor e) : super(e);
  $LabScheduleDatabaseManager get managers => $LabScheduleDatabaseManager(this);
  late final $LabSchedulesTable labSchedules = $LabSchedulesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [labSchedules];
}

typedef $$LabSchedulesTableCreateCompanionBuilder = LabSchedulesCompanion
    Function({
  required String id,
  Value<DateTime?> date,
  Value<String?> startTime,
  Value<String?> endTime,
  Value<String?> type,
  Value<String?> detail,
  Value<String?> createdBy,
  Value<DateTime?> updatedAt,
  Value<DateTime?> localStoredAt,
  Value<int> rowid,
});
typedef $$LabSchedulesTableUpdateCompanionBuilder = LabSchedulesCompanion
    Function({
  Value<String> id,
  Value<DateTime?> date,
  Value<String?> startTime,
  Value<String?> endTime,
  Value<String?> type,
  Value<String?> detail,
  Value<String?> createdBy,
  Value<DateTime?> updatedAt,
  Value<DateTime?> localStoredAt,
  Value<int> rowid,
});

class $$LabSchedulesTableFilterComposer
    extends Composer<_$LabScheduleDatabase, $LabSchedulesTable> {
  $$LabSchedulesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get endTime => $composableBuilder(
      column: $table.endTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get detail => $composableBuilder(
      column: $table.detail, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get localStoredAt => $composableBuilder(
      column: $table.localStoredAt, builder: (column) => ColumnFilters(column));
}

class $$LabSchedulesTableOrderingComposer
    extends Composer<_$LabScheduleDatabase, $LabSchedulesTable> {
  $$LabSchedulesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get endTime => $composableBuilder(
      column: $table.endTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get detail => $composableBuilder(
      column: $table.detail, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get localStoredAt => $composableBuilder(
      column: $table.localStoredAt,
      builder: (column) => ColumnOrderings(column));
}

class $$LabSchedulesTableAnnotationComposer
    extends Composer<_$LabScheduleDatabase, $LabSchedulesTable> {
  $$LabSchedulesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get startTime =>
      $composableBuilder(column: $table.startTime, builder: (column) => column);

  GeneratedColumn<String> get endTime =>
      $composableBuilder(column: $table.endTime, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get detail =>
      $composableBuilder(column: $table.detail, builder: (column) => column);

  GeneratedColumn<String> get createdBy =>
      $composableBuilder(column: $table.createdBy, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get localStoredAt => $composableBuilder(
      column: $table.localStoredAt, builder: (column) => column);
}

class $$LabSchedulesTableTableManager extends RootTableManager<
    _$LabScheduleDatabase,
    $LabSchedulesTable,
    LabSchedule,
    $$LabSchedulesTableFilterComposer,
    $$LabSchedulesTableOrderingComposer,
    $$LabSchedulesTableAnnotationComposer,
    $$LabSchedulesTableCreateCompanionBuilder,
    $$LabSchedulesTableUpdateCompanionBuilder,
    (
      LabSchedule,
      BaseReferences<_$LabScheduleDatabase, $LabSchedulesTable, LabSchedule>
    ),
    LabSchedule,
    PrefetchHooks Function()> {
  $$LabSchedulesTableTableManager(
      _$LabScheduleDatabase db, $LabSchedulesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LabSchedulesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LabSchedulesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LabSchedulesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime?> date = const Value.absent(),
            Value<String?> startTime = const Value.absent(),
            Value<String?> endTime = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> detail = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<DateTime?> localStoredAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LabSchedulesCompanion(
            id: id,
            date: date,
            startTime: startTime,
            endTime: endTime,
            type: type,
            detail: detail,
            createdBy: createdBy,
            updatedAt: updatedAt,
            localStoredAt: localStoredAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> date = const Value.absent(),
            Value<String?> startTime = const Value.absent(),
            Value<String?> endTime = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> detail = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<DateTime?> localStoredAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LabSchedulesCompanion.insert(
            id: id,
            date: date,
            startTime: startTime,
            endTime: endTime,
            type: type,
            detail: detail,
            createdBy: createdBy,
            updatedAt: updatedAt,
            localStoredAt: localStoredAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LabSchedulesTableProcessedTableManager = ProcessedTableManager<
    _$LabScheduleDatabase,
    $LabSchedulesTable,
    LabSchedule,
    $$LabSchedulesTableFilterComposer,
    $$LabSchedulesTableOrderingComposer,
    $$LabSchedulesTableAnnotationComposer,
    $$LabSchedulesTableCreateCompanionBuilder,
    $$LabSchedulesTableUpdateCompanionBuilder,
    (
      LabSchedule,
      BaseReferences<_$LabScheduleDatabase, $LabSchedulesTable, LabSchedule>
    ),
    LabSchedule,
    PrefetchHooks Function()>;

class $LabScheduleDatabaseManager {
  final _$LabScheduleDatabase _db;
  $LabScheduleDatabaseManager(this._db);
  $$LabSchedulesTableTableManager get labSchedules =>
      $$LabSchedulesTableTableManager(_db, _db.labSchedules);
}

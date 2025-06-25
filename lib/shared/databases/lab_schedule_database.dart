import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

part 'lab_schedule_database.g.dart';

class LabSchedules extends Table {
  TextColumn get id => text()();
  DateTimeColumn get date => dateTime().nullable()();
  TextColumn get startTime => text().nullable()();
  TextColumn get endTime => text().nullable()();
  TextColumn get type => text().nullable()();
  TextColumn get detail => text().nullable()();
  TextColumn get createdBy => text().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  DateTimeColumn get localStoredAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [LabSchedules])
class LabScheduleDatabase extends _$LabScheduleDatabase {
  LabScheduleDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          await m.createAll();
        },
        onUpgrade: (Migrator m, int from, int to) async {
          if (from == 1 && to >= 2) {
            await m.addColumn(labSchedules, labSchedules.localStoredAt);
          }
          if (from <= 2 && to >= 3) {
            await m.drop(labSchedules);
            await m.createTable(labSchedules);
          }
        },
      );

  static const int maxLocalRecords = 5;

  Future<void> saveLabSchedule(LabScheduleEntity labSchedule) async {
    try {
      if (labSchedule.id == null || labSchedule.id!.isEmpty) {
        throw DatabaseFailure(
          'LabSchedule ID cannot be null or empty when saving to database',
        );
      }

      await into(labSchedules).insertOnConflictUpdate(
        LabSchedulesCompanion(
          id: Value(labSchedule.id!),
          date: Value(labSchedule.date),
          startTime: Value(labSchedule.startTime),
          endTime: Value(labSchedule.endTime),
          type: Value(labSchedule.type),
          detail: Value(labSchedule.detail),
          createdBy: Value(labSchedule.createdBy),
          updatedAt: Value(labSchedule.updatedAt),
          localStoredAt: Value(DateTime.now()),
        ),
      );
    } catch (e) {
      throw DatabaseFailure('Failed to save lab schedule: $e');
    }
  }

  Future<void> saveLabScheduleList(List<LabScheduleEntity> schedules) async {
    try {
      await transaction(() async {
        for (final schedule in schedules) {
          if (schedule.id != null && schedule.id!.isNotEmpty) {
            await into(labSchedules).insertOnConflictUpdate(
              LabSchedulesCompanion(
                id: Value(schedule.id!),
                date: Value(schedule.date),
                startTime: Value(schedule.startTime),
                endTime: Value(schedule.endTime),
                type: Value(schedule.type),
                detail: Value(schedule.detail),
                createdBy: Value(schedule.createdBy),
                updatedAt: Value(schedule.updatedAt),
                localStoredAt: Value(DateTime.now()),
              ),
            );
          }
        }

        final count = await labSchedules.count().getSingle();
        if (count > maxLocalRecords) {
          final oldestRecords = await (select(labSchedules)
                ..orderBy([(t) => OrderingTerm.asc(t.localStoredAt)])
                ..limit(count - maxLocalRecords))
              .get();

          for (final record in oldestRecords) {
            await (delete(labSchedules)..where((t) => t.id.equals(record.id)))
                .go();
          }
        }
      });
    } catch (e) {
      throw DatabaseFailure('Failed to save lab schedule list: $e');
    }
  }

  Future<List<LabScheduleEntity>> getLabScheduleList() async {
    try {
      final query = select(labSchedules)
        ..orderBy([(t) => OrderingTerm.desc(t.localStoredAt)]);
      final scheduleList = await query.get();

      return scheduleList
          .map(
            (schedule) => LabScheduleEntity(
              id: schedule.id,
              date: schedule.date,
              startTime: schedule.startTime,
              endTime: schedule.endTime,
              type: schedule.type,
              detail: schedule.detail,
              createdBy: schedule.createdBy,
              updatedAt: schedule.updatedAt,
            ),
          )
          .toList();
    } catch (e) {
      throw DatabaseFailure('Failed to retrieve lab schedule list: $e');
    }
  }

  Future<LabScheduleEntity?> getLabScheduleDetail(String id) async {
    try {
      final query = select(labSchedules)..where((tbl) => tbl.id.equals(id));
      final schedule = await query.getSingleOrNull();

      if (schedule == null) return null;

      return LabScheduleEntity(
        id: schedule.id,
        date: schedule.date,
        startTime: schedule.startTime,
        endTime: schedule.endTime,
        type: schedule.type,
        detail: schedule.detail,
        createdBy: schedule.createdBy,
        updatedAt: schedule.updatedAt,
      );
    } catch (e) {
      throw DatabaseFailure('Failed to retrieve lab schedule detail: $e');
    }
  }

  Future<void> clearLabScheduleData() async {
    try {
      await delete(labSchedules).go();
    } catch (e) {
      throw DatabaseFailure('Failed to clear lab schedule data: $e');
    }
  }

  Future<bool> hasLabScheduleData() async {
    try {
      final count = await labSchedules.count().getSingle();
      return count > 0;
    } catch (e) {
      throw DatabaseFailure('Failed to check lab schedule data: $e');
    }
  }

  Future<int> getLabScheduleCount() async {
    try {
      return await labSchedules.count().getSingle();
    } catch (e) {
      throw DatabaseFailure('Failed to get lab schedule count: $e');
    }
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'lab_schedule_database.db'));
    return NativeDatabase(file);
  });
}

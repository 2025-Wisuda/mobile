import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

part 'duty_schedule_database.g.dart';

class DutySchedules extends Table {
  TextColumn get id => text()();
  TextColumn get teachingAssistants => text().nullable()();
  TextColumn get days => text().nullable()();
  DateTimeColumn get startDate => dateTime().nullable()();
  DateTimeColumn get endDate => dateTime().nullable()();
  TextColumn get startTime => text().nullable()();
  TextColumn get endTime => text().nullable()();
  BoolColumn get isActive => boolean().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  DateTimeColumn get localStoredAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [DutySchedules])
class DutyScheduleDatabase extends _$DutyScheduleDatabase {
  DutyScheduleDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          await m.createAll();
        },
        onUpgrade: (Migrator m, int from, int to) async {
          if (from == 1 && to >= 2) {
            await m.addColumn(dutySchedules, dutySchedules.localStoredAt);
          }
        },
      );

  static const int maxLocalRecords = 10;

  Future<void> saveDutySchedule(DutyScheduleEntity dutySchedule) async {
    try {
      if (dutySchedule.avatar == null || dutySchedule.avatar!.isEmpty) {
        throw DatabaseFailure(
          'DutySchedule ID cannot be null or empty when saving to database',
        );
      }

      await into(dutySchedules).insertOnConflictUpdate(
        DutySchedulesCompanion(
          id: Value(dutySchedule.avatar!), // Using avatar as ID for now
          teachingAssistants: Value(dutySchedule.name),
          days: Value(dutySchedule.studentNumber),
          startDate: Value(DateTime.now()),
          endDate: Value(DateTime.now()),
          startTime: Value(dutySchedule.status),
          endTime: Value(''),
          isActive: Value(true),
          createdAt: Value(DateTime.now()),
          updatedAt: Value(DateTime.now()),
          localStoredAt: Value(DateTime.now()),
        ),
      );
    } catch (e) {
      throw DatabaseFailure('Failed to save duty schedule: $e');
    }
  }

  Future<void> saveDutyScheduleList(List<DutyScheduleEntity> schedules) async {
    try {
      await transaction(() async {
        for (final schedule in schedules) {
          if (schedule.avatar != null && schedule.avatar!.isNotEmpty) {
            await into(dutySchedules).insertOnConflictUpdate(
              DutySchedulesCompanion(
                id: Value(schedule.avatar!),
                teachingAssistants: Value(schedule.name),
                days: Value(schedule.studentNumber),
                startDate: Value(DateTime.now()),
                endDate: Value(DateTime.now()),
                startTime: Value(schedule.status),
                endTime: Value(''),
                isActive: Value(true),
                createdAt: Value(DateTime.now()),
                updatedAt: Value(DateTime.now()),
                localStoredAt: Value(DateTime.now()),
              ),
            );
          }
        }

        final count = await dutySchedules.count().getSingle();
        if (count > maxLocalRecords) {
          final oldestRecords = await (select(dutySchedules)
                ..orderBy([(t) => OrderingTerm.asc(t.localStoredAt)])
                ..limit(count - maxLocalRecords))
              .get();

          for (final record in oldestRecords) {
            await (delete(dutySchedules)..where((t) => t.id.equals(record.id)))
                .go();
          }
        }
      });
    } catch (e) {
      throw DatabaseFailure('Failed to save duty schedule list: $e');
    }
  }

  Future<List<DutyScheduleEntity>> getDutyScheduleList() async {
    try {
      final query = select(dutySchedules)
        ..orderBy([(t) => OrderingTerm.desc(t.localStoredAt)]);
      final scheduleList = await query.get();

      return scheduleList
          .map(
            (schedule) => DutyScheduleEntity(
              avatar: schedule.id,
              name: schedule.teachingAssistants,
              studentNumber: schedule.days,
              status: schedule.startTime,
            ),
          )
          .toList();
    } catch (e) {
      throw DatabaseFailure('Failed to retrieve duty schedule list: $e');
    }
  }

  Future<DutyScheduleEntity?> getDutyScheduleDetail(String id) async {
    try {
      final query = select(dutySchedules)..where((tbl) => tbl.id.equals(id));
      final schedule = await query.getSingleOrNull();

      if (schedule == null) return null;

      return DutyScheduleEntity(
        avatar: schedule.id,
        name: schedule.teachingAssistants,
        studentNumber: schedule.days,
        status: schedule.startTime,
      );
    } catch (e) {
      throw DatabaseFailure('Failed to retrieve duty schedule detail: $e');
    }
  }

  Future<List<DutyScheduleEntity>> getDutyScheduleForToday() async {
    try {
      final query = select(dutySchedules)
        ..where((tbl) => tbl.isActive.equals(true))
        ..orderBy([(t) => OrderingTerm.desc(t.localStoredAt)]);

      final scheduleList = await query.get();

      return scheduleList
          .map(
            (schedule) => DutyScheduleEntity(
              avatar: schedule.id,
              name: schedule.teachingAssistants,
              studentNumber: schedule.days,
              status: schedule.startTime,
            ),
          )
          .toList();
    } catch (e) {
      throw DatabaseFailure('Failed to retrieve today duty schedule: $e');
    }
  }

  Future<void> clearDutyScheduleData() async {
    try {
      await delete(dutySchedules).go();
    } catch (e) {
      throw DatabaseFailure('Failed to clear duty schedule data: $e');
    }
  }

  Future<bool> hasDutyScheduleData() async {
    try {
      final count = await dutySchedules.count().getSingle();
      return count > 0;
    } catch (e) {
      throw DatabaseFailure('Failed to check duty schedule data: $e');
    }
  }

  Future<int> getDutyScheduleCount() async {
    try {
      return await dutySchedules.count().getSingle();
    } catch (e) {
      throw DatabaseFailure('Failed to get duty schedule count: $e');
    }
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'duty_schedule_database.db'));
    return NativeDatabase(file);
  });
}

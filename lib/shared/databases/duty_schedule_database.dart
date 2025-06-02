import 'dart:convert';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'duty_schedule_database.g.dart';

class DutySchedules extends Table {
  TextColumn get id => text()();
  TextColumn get teachingAssistants =>
      text().nullable()(); 
  TextColumn get days => text().nullable()();
  DateTimeColumn get startDate => dateTime().nullable()();
  DateTimeColumn get endDate => dateTime().nullable()();
  TextColumn get startTime => text().nullable()();
  TextColumn get endTime => text().nullable()();
  BoolColumn get isActive => boolean().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@singleton
@DriftDatabase(tables: [DutySchedules])
class DutyScheduleDatabase extends _$DutyScheduleDatabase {
  DutyScheduleDatabase() : super(_openConnection());

  int get schemaVersion => 1;

  Future<void> saveDutySchedule(DutyScheduleEntity dutySchedule) async {
    if (dutySchedule.id == null || dutySchedule.id!.isEmpty) {
      throw Exception(
        'DutySchedule ID cannot be null or empty when saving to database',
      );
    }

    String? teachingAssistantsJson;
    if (dutySchedule.teachingAssistants != null) {
      teachingAssistantsJson = jsonEncode(
        dutySchedule.teachingAssistants!
            .map(
              (user) => {
                'id': user.id,
                'username': user.username,
                'email': user.email,
                'firstName': user.firstName,
                'lastName': user.lastName,
                'studentNumber': user.studentNumber,
                'employeeNumber': user.employeeNumber,
                'faceImageUrl': user.faceImageUrl,
                'faceUploaded': user.faceUploaded,
                'avatarUrl': user.avatarUrl,
                'isActive': user.isActive,
                'isStaff': user.isStaff,
                'dateJoined': user.dateJoined?.toIso8601String(),
                'lastLogin': user.lastLogin?.toIso8601String(),
                'createdBy': user.createdBy,
                'createdAt': user.createdAt?.toIso8601String(),
                'updatedBy': user.updatedBy,
                'updatedAt': user.updatedAt?.toIso8601String(),
                'group': user.group,
              },
            )
            .toList(),
      );
    }

    await into(dutySchedules).insertOnConflictUpdate(
      DutySchedulesCompanion(
        id: Value(dutySchedule.id!),
        teachingAssistants: Value(teachingAssistantsJson),
        days: Value(dutySchedule.days),
        startDate: Value(dutySchedule.startDate),
        endDate: Value(dutySchedule.endDate),
        startTime: Value(dutySchedule.startTime),
        endTime: Value(dutySchedule.endTime),
        isActive: Value(dutySchedule.isActive),
        createdAt: Value(dutySchedule.createdAt),
        updatedAt: Value(dutySchedule.updatedAt),
      ),
    );
  }

  Future<DutyScheduleEntity?> getDutySchedule() async {
    final query = select(dutySchedules);
    final schedule = await query.getSingleOrNull();

    if (schedule == null) return null;

    List<UserEntity>? teachingAssistantsList;
    if (schedule.teachingAssistants != null &&
        schedule.teachingAssistants!.isNotEmpty) {
      final jsonList =
          jsonDecode(schedule.teachingAssistants!) as List<dynamic>;
      teachingAssistantsList =
          jsonList.map((userJson) {
            return UserEntity(
              id: userJson['id'],
              username: userJson['username'],
              email: userJson['email'],
              firstName: userJson['firstName'],
              lastName: userJson['lastName'],
              studentNumber: userJson['studentNumber'],
              employeeNumber: userJson['employeeNumber'],
              faceImageUrl: userJson['faceImageUrl'],
              faceUploaded: userJson['faceUploaded'],
              avatarUrl: userJson['avatarUrl'],
              isActive: userJson['isActive'],
              isStaff: userJson['isStaff'],
              dateJoined:
                  userJson['dateJoined'] != null
                      ? DateTime.parse(userJson['dateJoined'])
                      : null,
              lastLogin:
                  userJson['lastLogin'] != null
                      ? DateTime.parse(userJson['lastLogin'])
                      : null,
              createdBy: userJson['createdBy'],
              createdAt:
                  userJson['createdAt'] != null
                      ? DateTime.parse(userJson['createdAt'])
                      : null,
              updatedBy: userJson['updatedBy'],
              updatedAt:
                  userJson['updatedAt'] != null
                      ? DateTime.parse(userJson['updatedAt'])
                      : null,
              group: userJson['group'],
            );
          }).toList();
    }

    return DutyScheduleEntity(
      id: schedule.id,
      teachingAssistants: teachingAssistantsList,
      days: schedule.days,
      startDate: schedule.startDate,
      endDate: schedule.endDate,
      startTime: schedule.startTime,
      endTime: schedule.endTime,
      isActive: schedule.isActive,
      createdAt: schedule.createdAt,
      updatedAt: schedule.updatedAt,
    );
  }

  Future<void> clearDutyScheduleData() async {
    await delete(dutySchedules).go();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'duty_schedule_database.db'));
    return NativeDatabase(file);
  });
}

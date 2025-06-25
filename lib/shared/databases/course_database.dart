import 'dart:convert';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';

part 'course_database.g.dart';

class Courses extends Table {
  TextColumn get id => text()();
  TextColumn get title => text().nullable()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get startDate => dateTime().nullable()();
  DateTimeColumn get endDate => dateTime().nullable()();
  TextColumn get students => text().nullable()();
  TextColumn get teachingAssistants => text().nullable()();
  TextColumn get enrollKey => text().nullable()();
  IntColumn get totalStudents => integer().nullable()();
  IntColumn get totalTeachingAssistants => integer().nullable()();
  IntColumn get totalSessions => integer().nullable()();
  BoolColumn get hasEnrollment => boolean().nullable()();
  BoolColumn get isEnrollmentOpen => boolean().nullable()();
  TextColumn get image => text().nullable()();
  TextColumn get recentSessions => text().nullable()();
  BoolColumn get isParticipant => boolean().nullable()();
  DateTimeColumn get localStoredAt => dateTime().nullable()();
  TextColumn get createdBy => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [Courses])
class CourseDatabase extends _$CourseDatabase {
  CourseDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static const int maxStoredRecords = 5;

  Future<void> saveCourseList(List<CourseEntity> courses) async {
    await transaction(() async {
      await delete(this.courses).go();
      final now = DateTime.now();
      for (final course in courses.take(5)) {
        await into(this.courses).insert(
          CoursesCompanion(
            id: Value(course.id ?? ''),
            title: Value(course.title),
            description: Value(course.description),
            startDate: Value(course.startDate),
            endDate: Value(course.endDate),
            students: Value(
              course.students != null
                  ? jsonEncode(course.students!.map((e) => e.id).toList())
                  : null,
            ),
            teachingAssistants: Value(
              course.teachingAssistants != null
                  ? jsonEncode(
                      course.teachingAssistants!.map((e) => e.id).toList(),
                    )
                  : null,
            ),
            enrollKey: Value(course.enrollKey),
            totalStudents: Value(course.totalStudents),
            totalTeachingAssistants: Value(course.totalTeachingAssistants),
            totalSessions: Value(course.totalSessions),
            hasEnrollment: Value(course.hasEnrollment),
            isEnrollmentOpen: Value(course.isEnrollmentOpen),
            image: Value(course.image),
            recentSessions: Value(
              course.recentSessions != null
                  ? jsonEncode(course.recentSessions!.map((e) => e.id).toList())
                  : null,
            ),
            isParticipant: Value(course.isParticipant ?? false),
            localStoredAt: Value(now),
            createdBy: Value(course.createdBy?.id),
          ),
        );
      }
    });
  }

  Future<List<CourseEntity>> getCourseList() async {
    final courseList = await (select(courses)
          ..orderBy([
            (t) => OrderingTerm(
                  expression: t.localStoredAt,
                  mode: OrderingMode.desc,
                ),
          ])
          ..limit(5))
        .get();

    return courseList
        .map(
          (course) => CourseEntity(
            id: course.id,
            title: course.title,
            description: course.description,
            startDate: course.startDate,
            endDate: course.endDate,
            students: course.students != null
                ? (jsonDecode(course.students!) as List)
                    .map((id) => UserEntity(id: id as String))
                    .toList()
                : null,
            teachingAssistants: course.teachingAssistants != null
                ? (jsonDecode(course.teachingAssistants!) as List)
                    .map((id) => UserEntity(id: id as String))
                    .toList()
                : null,
            enrollKey: course.enrollKey,
            totalStudents: course.totalStudents,
            totalTeachingAssistants: course.totalTeachingAssistants,
            totalSessions: course.totalSessions,
            hasEnrollment: course.hasEnrollment,
            isEnrollmentOpen: course.isEnrollmentOpen,
            image: course.image,
            recentSessions: course.recentSessions != null
                ? (jsonDecode(course.recentSessions!) as List)
                    .map((id) => CourseSessionEntity(id: id as String))
                    .toList()
                : null,
            isParticipant: course.isParticipant,
            createdBy: course.createdBy != null
                ? UserEntity(id: course.createdBy!)
                : null,
          ),
        )
        .toList();
  }

  Future<void> clearCourseData() async {
    await transaction(() async {
      await delete(courses).go();
    });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'course_database.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

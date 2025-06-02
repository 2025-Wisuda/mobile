import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';

part 'user_database.g.dart';

class Users extends Table {
  TextColumn get id => text()();
  TextColumn get username => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get firstName => text().nullable()();
  TextColumn get lastName => text().nullable()();
  TextColumn get studentNumber => text().nullable()();
  TextColumn get employeeNumber => text().nullable()();
  TextColumn get faceImageUrl => text().nullable()();
  BoolColumn get faceUploaded => boolean().nullable()();
  TextColumn get avatarUrl => text().nullable()();
  BoolColumn get isActive => boolean().nullable()();
  BoolColumn get isStaff => boolean().nullable()();
  DateTimeColumn get dateJoined => dateTime().nullable()();
  DateTimeColumn get lastLogin => dateTime().nullable()();
  TextColumn get createdBy => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  TextColumn get updatedBy => text().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  TextColumn get userGroup => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@singleton
@DriftDatabase(tables: [Users])
class UserDatabase extends _$UserDatabase {
  UserDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> saveUserProfile(UserEntity user) async {
    if (user.id == null || user.id!.isEmpty) {
      throw Exception(
        'User ID cannot be null or empty when saving to database',
      );
    }

    await into(users).insertOnConflictUpdate(
      UsersCompanion(
        id: Value(user.id!),
        username: Value(user.username),
        email: Value(user.email),
        firstName: Value(user.firstName),
        lastName: Value(user.lastName),
        studentNumber: Value(user.studentNumber),
        employeeNumber: Value(user.employeeNumber),
        faceImageUrl: Value(user.faceImageUrl),
        faceUploaded: Value(user.faceUploaded),
        avatarUrl: Value(user.avatarUrl),
        isActive: Value(user.isActive),
        isStaff: Value(user.isStaff),
        dateJoined: Value(user.dateJoined),
        lastLogin: Value(user.lastLogin),
        createdBy: Value(user.createdBy),
        createdAt: Value(user.createdAt),
        updatedBy: Value(user.updatedBy),
        updatedAt: Value(user.updatedAt),
        userGroup: Value(user.group),
      ),
    );
  }

  Future<UserEntity?> getUserProfile() async {
    final query = select(users);
    final user = await query.getSingleOrNull();

    if (user == null) return null;

    return UserEntity(
      id: user.id,
      username: user.username,
      email: user.email,
      firstName: user.firstName,
      lastName: user.lastName,
      studentNumber: user.studentNumber,
      employeeNumber: user.employeeNumber,
      faceImageUrl: user.faceImageUrl,
      faceUploaded: user.faceUploaded,
      avatarUrl: user.avatarUrl,
      isActive: user.isActive,
      isStaff: user.isStaff,
      dateJoined: user.dateJoined,
      lastLogin: user.lastLogin,
      createdBy: user.createdBy,
      createdAt: user.createdAt,
      updatedBy: user.updatedBy,
      updatedAt: user.updatedAt,
      group: user.userGroup,
    );
  }

  Future<String?> getUserGroup() async {
    final query = select(users).map((row) => row.userGroup);
    return await query.getSingleOrNull();
  }

  Future<void> clearUserData() async {
    await delete(users).go();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'user_database.db'));
    return NativeDatabase(file);
  });
}

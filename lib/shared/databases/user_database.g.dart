// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _studentNumberMeta =
      const VerificationMeta('studentNumber');
  @override
  late final GeneratedColumn<String> studentNumber = GeneratedColumn<String>(
      'student_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _employeeNumberMeta =
      const VerificationMeta('employeeNumber');
  @override
  late final GeneratedColumn<String> employeeNumber = GeneratedColumn<String>(
      'employee_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _faceImageMeta =
      const VerificationMeta('faceImage');
  @override
  late final GeneratedColumn<String> faceImage = GeneratedColumn<String>(
      'face_image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _faceUploadedMeta =
      const VerificationMeta('faceUploaded');
  @override
  late final GeneratedColumn<bool> faceUploaded = GeneratedColumn<bool>(
      'face_uploaded', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("face_uploaded" IN (0, 1))'));
  static const VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedColumn<String> avatar = GeneratedColumn<String>(
      'avatar', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'));
  static const VerificationMeta _isStaffMeta =
      const VerificationMeta('isStaff');
  @override
  late final GeneratedColumn<bool> isStaff = GeneratedColumn<bool>(
      'is_staff', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_staff" IN (0, 1))'));
  static const VerificationMeta _dateJoinedMeta =
      const VerificationMeta('dateJoined');
  @override
  late final GeneratedColumn<DateTime> dateJoined = GeneratedColumn<DateTime>(
      'date_joined', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _lastLoginMeta =
      const VerificationMeta('lastLogin');
  @override
  late final GeneratedColumn<DateTime> lastLogin = GeneratedColumn<DateTime>(
      'last_login', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _userGroupMeta =
      const VerificationMeta('userGroup');
  @override
  late final GeneratedColumn<String> userGroup = GeneratedColumn<String>(
      'user_group', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        username,
        email,
        firstName,
        lastName,
        studentNumber,
        employeeNumber,
        faceImage,
        faceUploaded,
        avatar,
        isActive,
        isStaff,
        dateJoined,
        lastLogin,
        updatedAt,
        userGroup
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    }
    if (data.containsKey('student_number')) {
      context.handle(
          _studentNumberMeta,
          studentNumber.isAcceptableOrUnknown(
              data['student_number']!, _studentNumberMeta));
    }
    if (data.containsKey('employee_number')) {
      context.handle(
          _employeeNumberMeta,
          employeeNumber.isAcceptableOrUnknown(
              data['employee_number']!, _employeeNumberMeta));
    }
    if (data.containsKey('face_image')) {
      context.handle(_faceImageMeta,
          faceImage.isAcceptableOrUnknown(data['face_image']!, _faceImageMeta));
    }
    if (data.containsKey('face_uploaded')) {
      context.handle(
          _faceUploadedMeta,
          faceUploaded.isAcceptableOrUnknown(
              data['face_uploaded']!, _faceUploadedMeta));
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta,
          avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('is_staff')) {
      context.handle(_isStaffMeta,
          isStaff.isAcceptableOrUnknown(data['is_staff']!, _isStaffMeta));
    }
    if (data.containsKey('date_joined')) {
      context.handle(
          _dateJoinedMeta,
          dateJoined.isAcceptableOrUnknown(
              data['date_joined']!, _dateJoinedMeta));
    }
    if (data.containsKey('last_login')) {
      context.handle(_lastLoginMeta,
          lastLogin.isAcceptableOrUnknown(data['last_login']!, _lastLoginMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('user_group')) {
      context.handle(_userGroupMeta,
          userGroup.isAcceptableOrUnknown(data['user_group']!, _userGroupMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name']),
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name']),
      studentNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}student_number']),
      employeeNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}employee_number']),
      faceImage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}face_image']),
      faceUploaded: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}face_uploaded']),
      avatar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar']),
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active']),
      isStaff: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_staff']),
      dateJoined: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_joined']),
      lastLogin: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_login']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      userGroup: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_group']),
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String id;
  final String? username;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? studentNumber;
  final String? employeeNumber;
  final String? faceImage;
  final bool? faceUploaded;
  final String? avatar;
  final bool? isActive;
  final bool? isStaff;
  final DateTime? dateJoined;
  final DateTime? lastLogin;
  final DateTime? updatedAt;
  final String? userGroup;
  const User(
      {required this.id,
      this.username,
      this.email,
      this.firstName,
      this.lastName,
      this.studentNumber,
      this.employeeNumber,
      this.faceImage,
      this.faceUploaded,
      this.avatar,
      this.isActive,
      this.isStaff,
      this.dateJoined,
      this.lastLogin,
      this.updatedAt,
      this.userGroup});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || username != null) {
      map['username'] = Variable<String>(username);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || studentNumber != null) {
      map['student_number'] = Variable<String>(studentNumber);
    }
    if (!nullToAbsent || employeeNumber != null) {
      map['employee_number'] = Variable<String>(employeeNumber);
    }
    if (!nullToAbsent || faceImage != null) {
      map['face_image'] = Variable<String>(faceImage);
    }
    if (!nullToAbsent || faceUploaded != null) {
      map['face_uploaded'] = Variable<bool>(faceUploaded);
    }
    if (!nullToAbsent || avatar != null) {
      map['avatar'] = Variable<String>(avatar);
    }
    if (!nullToAbsent || isActive != null) {
      map['is_active'] = Variable<bool>(isActive);
    }
    if (!nullToAbsent || isStaff != null) {
      map['is_staff'] = Variable<bool>(isStaff);
    }
    if (!nullToAbsent || dateJoined != null) {
      map['date_joined'] = Variable<DateTime>(dateJoined);
    }
    if (!nullToAbsent || lastLogin != null) {
      map['last_login'] = Variable<DateTime>(lastLogin);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || userGroup != null) {
      map['user_group'] = Variable<String>(userGroup);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      studentNumber: studentNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(studentNumber),
      employeeNumber: employeeNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(employeeNumber),
      faceImage: faceImage == null && nullToAbsent
          ? const Value.absent()
          : Value(faceImage),
      faceUploaded: faceUploaded == null && nullToAbsent
          ? const Value.absent()
          : Value(faceUploaded),
      avatar:
          avatar == null && nullToAbsent ? const Value.absent() : Value(avatar),
      isActive: isActive == null && nullToAbsent
          ? const Value.absent()
          : Value(isActive),
      isStaff: isStaff == null && nullToAbsent
          ? const Value.absent()
          : Value(isStaff),
      dateJoined: dateJoined == null && nullToAbsent
          ? const Value.absent()
          : Value(dateJoined),
      lastLogin: lastLogin == null && nullToAbsent
          ? const Value.absent()
          : Value(lastLogin),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      userGroup: userGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(userGroup),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<String>(json['id']),
      username: serializer.fromJson<String?>(json['username']),
      email: serializer.fromJson<String?>(json['email']),
      firstName: serializer.fromJson<String?>(json['firstName']),
      lastName: serializer.fromJson<String?>(json['lastName']),
      studentNumber: serializer.fromJson<String?>(json['studentNumber']),
      employeeNumber: serializer.fromJson<String?>(json['employeeNumber']),
      faceImage: serializer.fromJson<String?>(json['faceImage']),
      faceUploaded: serializer.fromJson<bool?>(json['faceUploaded']),
      avatar: serializer.fromJson<String?>(json['avatar']),
      isActive: serializer.fromJson<bool?>(json['isActive']),
      isStaff: serializer.fromJson<bool?>(json['isStaff']),
      dateJoined: serializer.fromJson<DateTime?>(json['dateJoined']),
      lastLogin: serializer.fromJson<DateTime?>(json['lastLogin']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      userGroup: serializer.fromJson<String?>(json['userGroup']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'username': serializer.toJson<String?>(username),
      'email': serializer.toJson<String?>(email),
      'firstName': serializer.toJson<String?>(firstName),
      'lastName': serializer.toJson<String?>(lastName),
      'studentNumber': serializer.toJson<String?>(studentNumber),
      'employeeNumber': serializer.toJson<String?>(employeeNumber),
      'faceImage': serializer.toJson<String?>(faceImage),
      'faceUploaded': serializer.toJson<bool?>(faceUploaded),
      'avatar': serializer.toJson<String?>(avatar),
      'isActive': serializer.toJson<bool?>(isActive),
      'isStaff': serializer.toJson<bool?>(isStaff),
      'dateJoined': serializer.toJson<DateTime?>(dateJoined),
      'lastLogin': serializer.toJson<DateTime?>(lastLogin),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'userGroup': serializer.toJson<String?>(userGroup),
    };
  }

  User copyWith(
          {String? id,
          Value<String?> username = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> firstName = const Value.absent(),
          Value<String?> lastName = const Value.absent(),
          Value<String?> studentNumber = const Value.absent(),
          Value<String?> employeeNumber = const Value.absent(),
          Value<String?> faceImage = const Value.absent(),
          Value<bool?> faceUploaded = const Value.absent(),
          Value<String?> avatar = const Value.absent(),
          Value<bool?> isActive = const Value.absent(),
          Value<bool?> isStaff = const Value.absent(),
          Value<DateTime?> dateJoined = const Value.absent(),
          Value<DateTime?> lastLogin = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent(),
          Value<String?> userGroup = const Value.absent()}) =>
      User(
        id: id ?? this.id,
        username: username.present ? username.value : this.username,
        email: email.present ? email.value : this.email,
        firstName: firstName.present ? firstName.value : this.firstName,
        lastName: lastName.present ? lastName.value : this.lastName,
        studentNumber:
            studentNumber.present ? studentNumber.value : this.studentNumber,
        employeeNumber:
            employeeNumber.present ? employeeNumber.value : this.employeeNumber,
        faceImage: faceImage.present ? faceImage.value : this.faceImage,
        faceUploaded:
            faceUploaded.present ? faceUploaded.value : this.faceUploaded,
        avatar: avatar.present ? avatar.value : this.avatar,
        isActive: isActive.present ? isActive.value : this.isActive,
        isStaff: isStaff.present ? isStaff.value : this.isStaff,
        dateJoined: dateJoined.present ? dateJoined.value : this.dateJoined,
        lastLogin: lastLogin.present ? lastLogin.value : this.lastLogin,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        userGroup: userGroup.present ? userGroup.value : this.userGroup,
      );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      id: data.id.present ? data.id.value : this.id,
      username: data.username.present ? data.username.value : this.username,
      email: data.email.present ? data.email.value : this.email,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      studentNumber: data.studentNumber.present
          ? data.studentNumber.value
          : this.studentNumber,
      employeeNumber: data.employeeNumber.present
          ? data.employeeNumber.value
          : this.employeeNumber,
      faceImage: data.faceImage.present ? data.faceImage.value : this.faceImage,
      faceUploaded: data.faceUploaded.present
          ? data.faceUploaded.value
          : this.faceUploaded,
      avatar: data.avatar.present ? data.avatar.value : this.avatar,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      isStaff: data.isStaff.present ? data.isStaff.value : this.isStaff,
      dateJoined:
          data.dateJoined.present ? data.dateJoined.value : this.dateJoined,
      lastLogin: data.lastLogin.present ? data.lastLogin.value : this.lastLogin,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      userGroup: data.userGroup.present ? data.userGroup.value : this.userGroup,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('studentNumber: $studentNumber, ')
          ..write('employeeNumber: $employeeNumber, ')
          ..write('faceImage: $faceImage, ')
          ..write('faceUploaded: $faceUploaded, ')
          ..write('avatar: $avatar, ')
          ..write('isActive: $isActive, ')
          ..write('isStaff: $isStaff, ')
          ..write('dateJoined: $dateJoined, ')
          ..write('lastLogin: $lastLogin, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('userGroup: $userGroup')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      username,
      email,
      firstName,
      lastName,
      studentNumber,
      employeeNumber,
      faceImage,
      faceUploaded,
      avatar,
      isActive,
      isStaff,
      dateJoined,
      lastLogin,
      updatedAt,
      userGroup);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.username == this.username &&
          other.email == this.email &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.studentNumber == this.studentNumber &&
          other.employeeNumber == this.employeeNumber &&
          other.faceImage == this.faceImage &&
          other.faceUploaded == this.faceUploaded &&
          other.avatar == this.avatar &&
          other.isActive == this.isActive &&
          other.isStaff == this.isStaff &&
          other.dateJoined == this.dateJoined &&
          other.lastLogin == this.lastLogin &&
          other.updatedAt == this.updatedAt &&
          other.userGroup == this.userGroup);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<String?> username;
  final Value<String?> email;
  final Value<String?> firstName;
  final Value<String?> lastName;
  final Value<String?> studentNumber;
  final Value<String?> employeeNumber;
  final Value<String?> faceImage;
  final Value<bool?> faceUploaded;
  final Value<String?> avatar;
  final Value<bool?> isActive;
  final Value<bool?> isStaff;
  final Value<DateTime?> dateJoined;
  final Value<DateTime?> lastLogin;
  final Value<DateTime?> updatedAt;
  final Value<String?> userGroup;
  final Value<int> rowid;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.studentNumber = const Value.absent(),
    this.employeeNumber = const Value.absent(),
    this.faceImage = const Value.absent(),
    this.faceUploaded = const Value.absent(),
    this.avatar = const Value.absent(),
    this.isActive = const Value.absent(),
    this.isStaff = const Value.absent(),
    this.dateJoined = const Value.absent(),
    this.lastLogin = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.userGroup = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String id,
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.studentNumber = const Value.absent(),
    this.employeeNumber = const Value.absent(),
    this.faceImage = const Value.absent(),
    this.faceUploaded = const Value.absent(),
    this.avatar = const Value.absent(),
    this.isActive = const Value.absent(),
    this.isStaff = const Value.absent(),
    this.dateJoined = const Value.absent(),
    this.lastLogin = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.userGroup = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<User> custom({
    Expression<String>? id,
    Expression<String>? username,
    Expression<String>? email,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? studentNumber,
    Expression<String>? employeeNumber,
    Expression<String>? faceImage,
    Expression<bool>? faceUploaded,
    Expression<String>? avatar,
    Expression<bool>? isActive,
    Expression<bool>? isStaff,
    Expression<DateTime>? dateJoined,
    Expression<DateTime>? lastLogin,
    Expression<DateTime>? updatedAt,
    Expression<String>? userGroup,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (username != null) 'username': username,
      if (email != null) 'email': email,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (studentNumber != null) 'student_number': studentNumber,
      if (employeeNumber != null) 'employee_number': employeeNumber,
      if (faceImage != null) 'face_image': faceImage,
      if (faceUploaded != null) 'face_uploaded': faceUploaded,
      if (avatar != null) 'avatar': avatar,
      if (isActive != null) 'is_active': isActive,
      if (isStaff != null) 'is_staff': isStaff,
      if (dateJoined != null) 'date_joined': dateJoined,
      if (lastLogin != null) 'last_login': lastLogin,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (userGroup != null) 'user_group': userGroup,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? id,
      Value<String?>? username,
      Value<String?>? email,
      Value<String?>? firstName,
      Value<String?>? lastName,
      Value<String?>? studentNumber,
      Value<String?>? employeeNumber,
      Value<String?>? faceImage,
      Value<bool?>? faceUploaded,
      Value<String?>? avatar,
      Value<bool?>? isActive,
      Value<bool?>? isStaff,
      Value<DateTime?>? dateJoined,
      Value<DateTime?>? lastLogin,
      Value<DateTime?>? updatedAt,
      Value<String?>? userGroup,
      Value<int>? rowid}) {
    return UsersCompanion(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      studentNumber: studentNumber ?? this.studentNumber,
      employeeNumber: employeeNumber ?? this.employeeNumber,
      faceImage: faceImage ?? this.faceImage,
      faceUploaded: faceUploaded ?? this.faceUploaded,
      avatar: avatar ?? this.avatar,
      isActive: isActive ?? this.isActive,
      isStaff: isStaff ?? this.isStaff,
      dateJoined: dateJoined ?? this.dateJoined,
      lastLogin: lastLogin ?? this.lastLogin,
      updatedAt: updatedAt ?? this.updatedAt,
      userGroup: userGroup ?? this.userGroup,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (studentNumber.present) {
      map['student_number'] = Variable<String>(studentNumber.value);
    }
    if (employeeNumber.present) {
      map['employee_number'] = Variable<String>(employeeNumber.value);
    }
    if (faceImage.present) {
      map['face_image'] = Variable<String>(faceImage.value);
    }
    if (faceUploaded.present) {
      map['face_uploaded'] = Variable<bool>(faceUploaded.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<String>(avatar.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (isStaff.present) {
      map['is_staff'] = Variable<bool>(isStaff.value);
    }
    if (dateJoined.present) {
      map['date_joined'] = Variable<DateTime>(dateJoined.value);
    }
    if (lastLogin.present) {
      map['last_login'] = Variable<DateTime>(lastLogin.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (userGroup.present) {
      map['user_group'] = Variable<String>(userGroup.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('studentNumber: $studentNumber, ')
          ..write('employeeNumber: $employeeNumber, ')
          ..write('faceImage: $faceImage, ')
          ..write('faceUploaded: $faceUploaded, ')
          ..write('avatar: $avatar, ')
          ..write('isActive: $isActive, ')
          ..write('isStaff: $isStaff, ')
          ..write('dateJoined: $dateJoined, ')
          ..write('lastLogin: $lastLogin, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('userGroup: $userGroup, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$UserDatabase extends GeneratedDatabase {
  _$UserDatabase(QueryExecutor e) : super(e);
  $UserDatabaseManager get managers => $UserDatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users];
}

typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  required String id,
  Value<String?> username,
  Value<String?> email,
  Value<String?> firstName,
  Value<String?> lastName,
  Value<String?> studentNumber,
  Value<String?> employeeNumber,
  Value<String?> faceImage,
  Value<bool?> faceUploaded,
  Value<String?> avatar,
  Value<bool?> isActive,
  Value<bool?> isStaff,
  Value<DateTime?> dateJoined,
  Value<DateTime?> lastLogin,
  Value<DateTime?> updatedAt,
  Value<String?> userGroup,
  Value<int> rowid,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<String> id,
  Value<String?> username,
  Value<String?> email,
  Value<String?> firstName,
  Value<String?> lastName,
  Value<String?> studentNumber,
  Value<String?> employeeNumber,
  Value<String?> faceImage,
  Value<bool?> faceUploaded,
  Value<String?> avatar,
  Value<bool?> isActive,
  Value<bool?> isStaff,
  Value<DateTime?> dateJoined,
  Value<DateTime?> lastLogin,
  Value<DateTime?> updatedAt,
  Value<String?> userGroup,
  Value<int> rowid,
});

class $$UsersTableFilterComposer extends Composer<_$UserDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get studentNumber => $composableBuilder(
      column: $table.studentNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get employeeNumber => $composableBuilder(
      column: $table.employeeNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get faceImage => $composableBuilder(
      column: $table.faceImage, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get faceUploaded => $composableBuilder(
      column: $table.faceUploaded, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get avatar => $composableBuilder(
      column: $table.avatar, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isStaff => $composableBuilder(
      column: $table.isStaff, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dateJoined => $composableBuilder(
      column: $table.dateJoined, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastLogin => $composableBuilder(
      column: $table.lastLogin, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userGroup => $composableBuilder(
      column: $table.userGroup, builder: (column) => ColumnFilters(column));
}

class $$UsersTableOrderingComposer
    extends Composer<_$UserDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get studentNumber => $composableBuilder(
      column: $table.studentNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get employeeNumber => $composableBuilder(
      column: $table.employeeNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get faceImage => $composableBuilder(
      column: $table.faceImage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get faceUploaded => $composableBuilder(
      column: $table.faceUploaded,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get avatar => $composableBuilder(
      column: $table.avatar, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isStaff => $composableBuilder(
      column: $table.isStaff, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dateJoined => $composableBuilder(
      column: $table.dateJoined, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastLogin => $composableBuilder(
      column: $table.lastLogin, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userGroup => $composableBuilder(
      column: $table.userGroup, builder: (column) => ColumnOrderings(column));
}

class $$UsersTableAnnotationComposer
    extends Composer<_$UserDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get studentNumber => $composableBuilder(
      column: $table.studentNumber, builder: (column) => column);

  GeneratedColumn<String> get employeeNumber => $composableBuilder(
      column: $table.employeeNumber, builder: (column) => column);

  GeneratedColumn<String> get faceImage =>
      $composableBuilder(column: $table.faceImage, builder: (column) => column);

  GeneratedColumn<bool> get faceUploaded => $composableBuilder(
      column: $table.faceUploaded, builder: (column) => column);

  GeneratedColumn<String> get avatar =>
      $composableBuilder(column: $table.avatar, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<bool> get isStaff =>
      $composableBuilder(column: $table.isStaff, builder: (column) => column);

  GeneratedColumn<DateTime> get dateJoined => $composableBuilder(
      column: $table.dateJoined, builder: (column) => column);

  GeneratedColumn<DateTime> get lastLogin =>
      $composableBuilder(column: $table.lastLogin, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get userGroup =>
      $composableBuilder(column: $table.userGroup, builder: (column) => column);
}

class $$UsersTableTableManager extends RootTableManager<
    _$UserDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$UserDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()> {
  $$UsersTableTableManager(_$UserDatabase db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> username = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> firstName = const Value.absent(),
            Value<String?> lastName = const Value.absent(),
            Value<String?> studentNumber = const Value.absent(),
            Value<String?> employeeNumber = const Value.absent(),
            Value<String?> faceImage = const Value.absent(),
            Value<bool?> faceUploaded = const Value.absent(),
            Value<String?> avatar = const Value.absent(),
            Value<bool?> isActive = const Value.absent(),
            Value<bool?> isStaff = const Value.absent(),
            Value<DateTime?> dateJoined = const Value.absent(),
            Value<DateTime?> lastLogin = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<String?> userGroup = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            username: username,
            email: email,
            firstName: firstName,
            lastName: lastName,
            studentNumber: studentNumber,
            employeeNumber: employeeNumber,
            faceImage: faceImage,
            faceUploaded: faceUploaded,
            avatar: avatar,
            isActive: isActive,
            isStaff: isStaff,
            dateJoined: dateJoined,
            lastLogin: lastLogin,
            updatedAt: updatedAt,
            userGroup: userGroup,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> username = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> firstName = const Value.absent(),
            Value<String?> lastName = const Value.absent(),
            Value<String?> studentNumber = const Value.absent(),
            Value<String?> employeeNumber = const Value.absent(),
            Value<String?> faceImage = const Value.absent(),
            Value<bool?> faceUploaded = const Value.absent(),
            Value<String?> avatar = const Value.absent(),
            Value<bool?> isActive = const Value.absent(),
            Value<bool?> isStaff = const Value.absent(),
            Value<DateTime?> dateJoined = const Value.absent(),
            Value<DateTime?> lastLogin = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<String?> userGroup = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            id: id,
            username: username,
            email: email,
            firstName: firstName,
            lastName: lastName,
            studentNumber: studentNumber,
            employeeNumber: employeeNumber,
            faceImage: faceImage,
            faceUploaded: faceUploaded,
            avatar: avatar,
            isActive: isActive,
            isStaff: isStaff,
            dateJoined: dateJoined,
            lastLogin: lastLogin,
            updatedAt: updatedAt,
            userGroup: userGroup,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UsersTableProcessedTableManager = ProcessedTableManager<
    _$UserDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$UserDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()>;

class $UserDatabaseManager {
  final _$UserDatabase _db;
  $UserDatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
}

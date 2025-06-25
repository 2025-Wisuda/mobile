// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserEntity {
  String? get id;
  String? get username;
  String? get email;
  String? get firstName;
  String? get lastName;
  String? get studentNumber;
  String? get employeeNumber;
  String? get faceImage;
  bool? get faceUploaded;
  String? get avatar;
  bool? get isActive;
  bool? get isStaff;
  DateTime? get dateJoined;
  DateTime? get lastLogin;
  DateTime? get updatedAt;
  String? get group;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<UserEntity> get copyWith =>
      _$UserEntityCopyWithImpl<UserEntity>(this as UserEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.studentNumber, studentNumber) ||
                other.studentNumber == studentNumber) &&
            (identical(other.employeeNumber, employeeNumber) ||
                other.employeeNumber == employeeNumber) &&
            (identical(other.faceImage, faceImage) ||
                other.faceImage == faceImage) &&
            (identical(other.faceUploaded, faceUploaded) ||
                other.faceUploaded == faceUploaded) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isStaff, isStaff) || other.isStaff == isStaff) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
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
      group);

  @override
  String toString() {
    return 'UserEntity(id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, studentNumber: $studentNumber, employeeNumber: $employeeNumber, faceImage: $faceImage, faceUploaded: $faceUploaded, avatar: $avatar, isActive: $isActive, isStaff: $isStaff, dateJoined: $dateJoined, lastLogin: $lastLogin, updatedAt: $updatedAt, group: $group)';
  }
}

/// @nodoc
abstract mixin class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) _then) =
      _$UserEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? username,
      String? email,
      String? firstName,
      String? lastName,
      String? studentNumber,
      String? employeeNumber,
      String? faceImage,
      bool? faceUploaded,
      String? avatar,
      bool? isActive,
      bool? isStaff,
      DateTime? dateJoined,
      DateTime? lastLogin,
      DateTime? updatedAt,
      String? group});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res> implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._self, this._then);

  final UserEntity _self;
  final $Res Function(UserEntity) _then;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? studentNumber = freezed,
    Object? employeeNumber = freezed,
    Object? faceImage = freezed,
    Object? faceUploaded = freezed,
    Object? avatar = freezed,
    Object? isActive = freezed,
    Object? isStaff = freezed,
    Object? dateJoined = freezed,
    Object? lastLogin = freezed,
    Object? updatedAt = freezed,
    Object? group = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentNumber: freezed == studentNumber
          ? _self.studentNumber
          : studentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeNumber: freezed == employeeNumber
          ? _self.employeeNumber
          : employeeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      faceImage: freezed == faceImage
          ? _self.faceImage
          : faceImage // ignore: cast_nullable_to_non_nullable
              as String?,
      faceUploaded: freezed == faceUploaded
          ? _self.faceUploaded
          : faceUploaded // ignore: cast_nullable_to_non_nullable
              as bool?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStaff: freezed == isStaff
          ? _self.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateJoined: freezed == dateJoined
          ? _self.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastLogin: freezed == lastLogin
          ? _self.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      group: freezed == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _UserEntity implements UserEntity {
  const _UserEntity(
      {this.id,
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
      this.group});

  @override
  final String? id;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? studentNumber;
  @override
  final String? employeeNumber;
  @override
  final String? faceImage;
  @override
  final bool? faceUploaded;
  @override
  final String? avatar;
  @override
  final bool? isActive;
  @override
  final bool? isStaff;
  @override
  final DateTime? dateJoined;
  @override
  final DateTime? lastLogin;
  @override
  final DateTime? updatedAt;
  @override
  final String? group;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserEntityCopyWith<_UserEntity> get copyWith =>
      __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.studentNumber, studentNumber) ||
                other.studentNumber == studentNumber) &&
            (identical(other.employeeNumber, employeeNumber) ||
                other.employeeNumber == employeeNumber) &&
            (identical(other.faceImage, faceImage) ||
                other.faceImage == faceImage) &&
            (identical(other.faceUploaded, faceUploaded) ||
                other.faceUploaded == faceUploaded) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isStaff, isStaff) || other.isStaff == isStaff) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
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
      group);

  @override
  String toString() {
    return 'UserEntity(id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, studentNumber: $studentNumber, employeeNumber: $employeeNumber, faceImage: $faceImage, faceUploaded: $faceUploaded, avatar: $avatar, isActive: $isActive, isStaff: $isStaff, dateJoined: $dateJoined, lastLogin: $lastLogin, updatedAt: $updatedAt, group: $group)';
  }
}

/// @nodoc
abstract mixin class _$UserEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(
          _UserEntity value, $Res Function(_UserEntity) _then) =
      __$UserEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? username,
      String? email,
      String? firstName,
      String? lastName,
      String? studentNumber,
      String? employeeNumber,
      String? faceImage,
      bool? faceUploaded,
      String? avatar,
      bool? isActive,
      bool? isStaff,
      DateTime? dateJoined,
      DateTime? lastLogin,
      DateTime? updatedAt,
      String? group});
}

/// @nodoc
class __$UserEntityCopyWithImpl<$Res> implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(this._self, this._then);

  final _UserEntity _self;
  final $Res Function(_UserEntity) _then;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? studentNumber = freezed,
    Object? employeeNumber = freezed,
    Object? faceImage = freezed,
    Object? faceUploaded = freezed,
    Object? avatar = freezed,
    Object? isActive = freezed,
    Object? isStaff = freezed,
    Object? dateJoined = freezed,
    Object? lastLogin = freezed,
    Object? updatedAt = freezed,
    Object? group = freezed,
  }) {
    return _then(_UserEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentNumber: freezed == studentNumber
          ? _self.studentNumber
          : studentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeNumber: freezed == employeeNumber
          ? _self.employeeNumber
          : employeeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      faceImage: freezed == faceImage
          ? _self.faceImage
          : faceImage // ignore: cast_nullable_to_non_nullable
              as String?,
      faceUploaded: freezed == faceUploaded
          ? _self.faceUploaded
          : faceUploaded // ignore: cast_nullable_to_non_nullable
              as bool?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStaff: freezed == isStaff
          ? _self.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateJoined: freezed == dateJoined
          ? _self.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastLogin: freezed == lastLogin
          ? _self.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      group: freezed == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

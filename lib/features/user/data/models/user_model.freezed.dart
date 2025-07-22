// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'id', includeIfNull: false)
  String? get id;
  @JsonKey(name: 'username', includeIfNull: false)
  String? get username;
  @JsonKey(name: 'email', includeIfNull: false)
  String? get email;
  @JsonKey(name: 'first_name', includeIfNull: false)
  String? get firstName;
  @JsonKey(name: 'last_name', includeIfNull: false)
  String? get lastName;
  @JsonKey(name: 'student_number', includeIfNull: false)
  String? get studentNumber;
  @JsonKey(name: 'employee_number', includeIfNull: false)
  String? get employeeNumber;
  @JsonKey(name: 'face_image', includeIfNull: false)
  String? get faceImage;
  @JsonKey(name: 'face_uploaded', includeIfNull: false)
  bool? get faceUploaded;
  @JsonKey(name: 'avatar', includeIfNull: false)
  String? get avatar;
  @JsonKey(name: 'is_active', includeIfNull: false)
  bool? get isActive;
  @JsonKey(name: 'is_staff', includeIfNull: false)
  bool? get isStaff;
  @JsonKey(name: 'date_joined', includeIfNull: false)
  DateTime? get dateJoined;
  @JsonKey(name: 'last_login', includeIfNull: false)
  DateTime? get lastLogin;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  DateTime? get updatedAt;
  @JsonKey(name: 'group', includeIfNull: false)
  String? get group;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<UserModel> get copyWith =>
      _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'UserModel(id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, studentNumber: $studentNumber, employeeNumber: $employeeNumber, faceImage: $faceImage, faceUploaded: $faceUploaded, avatar: $avatar, isActive: $isActive, isStaff: $isStaff, dateJoined: $dateJoined, lastLogin: $lastLogin, updatedAt: $updatedAt, group: $group)';
  }
}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) =
      _$UserModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', includeIfNull: false) String? id,
      @JsonKey(name: 'username', includeIfNull: false) String? username,
      @JsonKey(name: 'email', includeIfNull: false) String? email,
      @JsonKey(name: 'first_name', includeIfNull: false) String? firstName,
      @JsonKey(name: 'last_name', includeIfNull: false) String? lastName,
      @JsonKey(name: 'student_number', includeIfNull: false)
      String? studentNumber,
      @JsonKey(name: 'employee_number', includeIfNull: false)
      String? employeeNumber,
      @JsonKey(name: 'face_image', includeIfNull: false) String? faceImage,
      @JsonKey(name: 'face_uploaded', includeIfNull: false) bool? faceUploaded,
      @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
      @JsonKey(name: 'is_active', includeIfNull: false) bool? isActive,
      @JsonKey(name: 'is_staff', includeIfNull: false) bool? isStaff,
      @JsonKey(name: 'date_joined', includeIfNull: false) DateTime? dateJoined,
      @JsonKey(name: 'last_login', includeIfNull: false) DateTime? lastLogin,
      @JsonKey(name: 'updated_at', includeIfNull: false) DateTime? updatedAt,
      @JsonKey(name: 'group', includeIfNull: false) String? group});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

  /// Create a copy of UserModel
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

/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id', includeIfNull: false) String? id,
            @JsonKey(name: 'username', includeIfNull: false) String? username,
            @JsonKey(name: 'email', includeIfNull: false) String? email,
            @JsonKey(name: 'first_name', includeIfNull: false)
            String? firstName,
            @JsonKey(name: 'last_name', includeIfNull: false) String? lastName,
            @JsonKey(name: 'student_number', includeIfNull: false)
            String? studentNumber,
            @JsonKey(name: 'employee_number', includeIfNull: false)
            String? employeeNumber,
            @JsonKey(name: 'face_image', includeIfNull: false)
            String? faceImage,
            @JsonKey(name: 'face_uploaded', includeIfNull: false)
            bool? faceUploaded,
            @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
            @JsonKey(name: 'is_active', includeIfNull: false) bool? isActive,
            @JsonKey(name: 'is_staff', includeIfNull: false) bool? isStaff,
            @JsonKey(name: 'date_joined', includeIfNull: false)
            DateTime? dateJoined,
            @JsonKey(name: 'last_login', includeIfNull: false)
            DateTime? lastLogin,
            @JsonKey(name: 'updated_at', includeIfNull: false)
            DateTime? updatedAt,
            @JsonKey(name: 'group', includeIfNull: false) String? group)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserModel() when $default != null:
        return $default(
            _that.id,
            _that.username,
            _that.email,
            _that.firstName,
            _that.lastName,
            _that.studentNumber,
            _that.employeeNumber,
            _that.faceImage,
            _that.faceUploaded,
            _that.avatar,
            _that.isActive,
            _that.isStaff,
            _that.dateJoined,
            _that.lastLogin,
            _that.updatedAt,
            _that.group);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id', includeIfNull: false) String? id,
            @JsonKey(name: 'username', includeIfNull: false) String? username,
            @JsonKey(name: 'email', includeIfNull: false) String? email,
            @JsonKey(name: 'first_name', includeIfNull: false)
            String? firstName,
            @JsonKey(name: 'last_name', includeIfNull: false) String? lastName,
            @JsonKey(name: 'student_number', includeIfNull: false)
            String? studentNumber,
            @JsonKey(name: 'employee_number', includeIfNull: false)
            String? employeeNumber,
            @JsonKey(name: 'face_image', includeIfNull: false)
            String? faceImage,
            @JsonKey(name: 'face_uploaded', includeIfNull: false)
            bool? faceUploaded,
            @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
            @JsonKey(name: 'is_active', includeIfNull: false) bool? isActive,
            @JsonKey(name: 'is_staff', includeIfNull: false) bool? isStaff,
            @JsonKey(name: 'date_joined', includeIfNull: false)
            DateTime? dateJoined,
            @JsonKey(name: 'last_login', includeIfNull: false)
            DateTime? lastLogin,
            @JsonKey(name: 'updated_at', includeIfNull: false)
            DateTime? updatedAt,
            @JsonKey(name: 'group', includeIfNull: false) String? group)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserModel():
        return $default(
            _that.id,
            _that.username,
            _that.email,
            _that.firstName,
            _that.lastName,
            _that.studentNumber,
            _that.employeeNumber,
            _that.faceImage,
            _that.faceUploaded,
            _that.avatar,
            _that.isActive,
            _that.isStaff,
            _that.dateJoined,
            _that.lastLogin,
            _that.updatedAt,
            _that.group);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id', includeIfNull: false) String? id,
            @JsonKey(name: 'username', includeIfNull: false) String? username,
            @JsonKey(name: 'email', includeIfNull: false) String? email,
            @JsonKey(name: 'first_name', includeIfNull: false)
            String? firstName,
            @JsonKey(name: 'last_name', includeIfNull: false) String? lastName,
            @JsonKey(name: 'student_number', includeIfNull: false)
            String? studentNumber,
            @JsonKey(name: 'employee_number', includeIfNull: false)
            String? employeeNumber,
            @JsonKey(name: 'face_image', includeIfNull: false)
            String? faceImage,
            @JsonKey(name: 'face_uploaded', includeIfNull: false)
            bool? faceUploaded,
            @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
            @JsonKey(name: 'is_active', includeIfNull: false) bool? isActive,
            @JsonKey(name: 'is_staff', includeIfNull: false) bool? isStaff,
            @JsonKey(name: 'date_joined', includeIfNull: false)
            DateTime? dateJoined,
            @JsonKey(name: 'last_login', includeIfNull: false)
            DateTime? lastLogin,
            @JsonKey(name: 'updated_at', includeIfNull: false)
            DateTime? updatedAt,
            @JsonKey(name: 'group', includeIfNull: false) String? group)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserModel() when $default != null:
        return $default(
            _that.id,
            _that.username,
            _that.email,
            _that.firstName,
            _that.lastName,
            _that.studentNumber,
            _that.employeeNumber,
            _that.faceImage,
            _that.faceUploaded,
            _that.avatar,
            _that.isActive,
            _that.isStaff,
            _that.dateJoined,
            _that.lastLogin,
            _that.updatedAt,
            _that.group);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserModel implements UserModel {
  const _UserModel(
      {@JsonKey(name: 'id', includeIfNull: false) this.id,
      @JsonKey(name: 'username', includeIfNull: false) this.username,
      @JsonKey(name: 'email', includeIfNull: false) this.email,
      @JsonKey(name: 'first_name', includeIfNull: false) this.firstName,
      @JsonKey(name: 'last_name', includeIfNull: false) this.lastName,
      @JsonKey(name: 'student_number', includeIfNull: false) this.studentNumber,
      @JsonKey(name: 'employee_number', includeIfNull: false)
      this.employeeNumber,
      @JsonKey(name: 'face_image', includeIfNull: false) this.faceImage,
      @JsonKey(name: 'face_uploaded', includeIfNull: false) this.faceUploaded,
      @JsonKey(name: 'avatar', includeIfNull: false) this.avatar,
      @JsonKey(name: 'is_active', includeIfNull: false) this.isActive,
      @JsonKey(name: 'is_staff', includeIfNull: false) this.isStaff,
      @JsonKey(name: 'date_joined', includeIfNull: false) this.dateJoined,
      @JsonKey(name: 'last_login', includeIfNull: false) this.lastLogin,
      @JsonKey(name: 'updated_at', includeIfNull: false) this.updatedAt,
      @JsonKey(name: 'group', includeIfNull: false) this.group});
  factory _UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @override
  @JsonKey(name: 'username', includeIfNull: false)
  final String? username;
  @override
  @JsonKey(name: 'email', includeIfNull: false)
  final String? email;
  @override
  @JsonKey(name: 'first_name', includeIfNull: false)
  final String? firstName;
  @override
  @JsonKey(name: 'last_name', includeIfNull: false)
  final String? lastName;
  @override
  @JsonKey(name: 'student_number', includeIfNull: false)
  final String? studentNumber;
  @override
  @JsonKey(name: 'employee_number', includeIfNull: false)
  final String? employeeNumber;
  @override
  @JsonKey(name: 'face_image', includeIfNull: false)
  final String? faceImage;
  @override
  @JsonKey(name: 'face_uploaded', includeIfNull: false)
  final bool? faceUploaded;
  @override
  @JsonKey(name: 'avatar', includeIfNull: false)
  final String? avatar;
  @override
  @JsonKey(name: 'is_active', includeIfNull: false)
  final bool? isActive;
  @override
  @JsonKey(name: 'is_staff', includeIfNull: false)
  final bool? isStaff;
  @override
  @JsonKey(name: 'date_joined', includeIfNull: false)
  final DateTime? dateJoined;
  @override
  @JsonKey(name: 'last_login', includeIfNull: false)
  final DateTime? lastLogin;
  @override
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'group', includeIfNull: false)
  final String? group;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'UserModel(id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, studentNumber: $studentNumber, employeeNumber: $employeeNumber, faceImage: $faceImage, faceUploaded: $faceUploaded, avatar: $avatar, isActive: $isActive, isStaff: $isStaff, dateJoined: $dateJoined, lastLogin: $lastLogin, updatedAt: $updatedAt, group: $group)';
  }
}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) _then) =
      __$UserModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', includeIfNull: false) String? id,
      @JsonKey(name: 'username', includeIfNull: false) String? username,
      @JsonKey(name: 'email', includeIfNull: false) String? email,
      @JsonKey(name: 'first_name', includeIfNull: false) String? firstName,
      @JsonKey(name: 'last_name', includeIfNull: false) String? lastName,
      @JsonKey(name: 'student_number', includeIfNull: false)
      String? studentNumber,
      @JsonKey(name: 'employee_number', includeIfNull: false)
      String? employeeNumber,
      @JsonKey(name: 'face_image', includeIfNull: false) String? faceImage,
      @JsonKey(name: 'face_uploaded', includeIfNull: false) bool? faceUploaded,
      @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
      @JsonKey(name: 'is_active', includeIfNull: false) bool? isActive,
      @JsonKey(name: 'is_staff', includeIfNull: false) bool? isStaff,
      @JsonKey(name: 'date_joined', includeIfNull: false) DateTime? dateJoined,
      @JsonKey(name: 'last_login', includeIfNull: false) DateTime? lastLogin,
      @JsonKey(name: 'updated_at', includeIfNull: false) DateTime? updatedAt,
      @JsonKey(name: 'group', includeIfNull: false) String? group});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

  /// Create a copy of UserModel
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
    return _then(_UserModel(
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

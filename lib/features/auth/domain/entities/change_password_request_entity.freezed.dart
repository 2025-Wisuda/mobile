// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangePasswordRequestEntity {
  String get oldPassword;
  String get newPassword;

  /// Create a copy of ChangePasswordRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangePasswordRequestEntityCopyWith<ChangePasswordRequestEntity>
      get copyWith => _$ChangePasswordRequestEntityCopyWithImpl<
              ChangePasswordRequestEntity>(
          this as ChangePasswordRequestEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordRequestEntity &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  @override
  String toString() {
    return 'ChangePasswordRequestEntity(oldPassword: $oldPassword, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class $ChangePasswordRequestEntityCopyWith<$Res> {
  factory $ChangePasswordRequestEntityCopyWith(
          ChangePasswordRequestEntity value,
          $Res Function(ChangePasswordRequestEntity) _then) =
      _$ChangePasswordRequestEntityCopyWithImpl;
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class _$ChangePasswordRequestEntityCopyWithImpl<$Res>
    implements $ChangePasswordRequestEntityCopyWith<$Res> {
  _$ChangePasswordRequestEntityCopyWithImpl(this._self, this._then);

  final ChangePasswordRequestEntity _self;
  final $Res Function(ChangePasswordRequestEntity) _then;

  /// Create a copy of ChangePasswordRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_self.copyWith(
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ChangePasswordRequestEntity implements ChangePasswordRequestEntity {
  const _ChangePasswordRequestEntity(
      {required this.oldPassword, required this.newPassword});

  @override
  final String oldPassword;
  @override
  final String newPassword;

  /// Create a copy of ChangePasswordRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChangePasswordRequestEntityCopyWith<_ChangePasswordRequestEntity>
      get copyWith => __$ChangePasswordRequestEntityCopyWithImpl<
          _ChangePasswordRequestEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePasswordRequestEntity &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  @override
  String toString() {
    return 'ChangePasswordRequestEntity(oldPassword: $oldPassword, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class _$ChangePasswordRequestEntityCopyWith<$Res>
    implements $ChangePasswordRequestEntityCopyWith<$Res> {
  factory _$ChangePasswordRequestEntityCopyWith(
          _ChangePasswordRequestEntity value,
          $Res Function(_ChangePasswordRequestEntity) _then) =
      __$ChangePasswordRequestEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$ChangePasswordRequestEntityCopyWithImpl<$Res>
    implements _$ChangePasswordRequestEntityCopyWith<$Res> {
  __$ChangePasswordRequestEntityCopyWithImpl(this._self, this._then);

  final _ChangePasswordRequestEntity _self;
  final $Res Function(_ChangePasswordRequestEntity) _then;

  /// Create a copy of ChangePasswordRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_ChangePasswordRequestEntity(
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

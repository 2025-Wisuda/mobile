// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LogoutRequestEntity {
  String get refreshToken;

  /// Create a copy of LogoutRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LogoutRequestEntityCopyWith<LogoutRequestEntity> get copyWith =>
      _$LogoutRequestEntityCopyWithImpl<LogoutRequestEntity>(
          this as LogoutRequestEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogoutRequestEntity &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @override
  String toString() {
    return 'LogoutRequestEntity(refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class $LogoutRequestEntityCopyWith<$Res> {
  factory $LogoutRequestEntityCopyWith(
          LogoutRequestEntity value, $Res Function(LogoutRequestEntity) _then) =
      _$LogoutRequestEntityCopyWithImpl;
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class _$LogoutRequestEntityCopyWithImpl<$Res>
    implements $LogoutRequestEntityCopyWith<$Res> {
  _$LogoutRequestEntityCopyWithImpl(this._self, this._then);

  final LogoutRequestEntity _self;
  final $Res Function(LogoutRequestEntity) _then;

  /// Create a copy of LogoutRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_self.copyWith(
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LogoutRequestEntity implements LogoutRequestEntity {
  const _LogoutRequestEntity({required this.refreshToken});

  @override
  final String refreshToken;

  /// Create a copy of LogoutRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LogoutRequestEntityCopyWith<_LogoutRequestEntity> get copyWith =>
      __$LogoutRequestEntityCopyWithImpl<_LogoutRequestEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogoutRequestEntity &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @override
  String toString() {
    return 'LogoutRequestEntity(refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class _$LogoutRequestEntityCopyWith<$Res>
    implements $LogoutRequestEntityCopyWith<$Res> {
  factory _$LogoutRequestEntityCopyWith(_LogoutRequestEntity value,
          $Res Function(_LogoutRequestEntity) _then) =
      __$LogoutRequestEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class __$LogoutRequestEntityCopyWithImpl<$Res>
    implements _$LogoutRequestEntityCopyWith<$Res> {
  __$LogoutRequestEntityCopyWithImpl(this._self, this._then);

  final _LogoutRequestEntity _self;
  final $Res Function(_LogoutRequestEntity) _then;

  /// Create a copy of LogoutRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_LogoutRequestEntity(
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

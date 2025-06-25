// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enroll_course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EnrollCourseModel {
  @JsonKey(name: 'enroll_key')
  String? get enrollKey;

  /// Create a copy of EnrollCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EnrollCourseModelCopyWith<EnrollCourseModel> get copyWith =>
      _$EnrollCourseModelCopyWithImpl<EnrollCourseModel>(
          this as EnrollCourseModel, _$identity);

  /// Serializes this EnrollCourseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EnrollCourseModel &&
            (identical(other.enrollKey, enrollKey) ||
                other.enrollKey == enrollKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, enrollKey);

  @override
  String toString() {
    return 'EnrollCourseModel(enrollKey: $enrollKey)';
  }
}

/// @nodoc
abstract mixin class $EnrollCourseModelCopyWith<$Res> {
  factory $EnrollCourseModelCopyWith(
          EnrollCourseModel value, $Res Function(EnrollCourseModel) _then) =
      _$EnrollCourseModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'enroll_key') String? enrollKey});
}

/// @nodoc
class _$EnrollCourseModelCopyWithImpl<$Res>
    implements $EnrollCourseModelCopyWith<$Res> {
  _$EnrollCourseModelCopyWithImpl(this._self, this._then);

  final EnrollCourseModel _self;
  final $Res Function(EnrollCourseModel) _then;

  /// Create a copy of EnrollCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enrollKey = freezed,
  }) {
    return _then(_self.copyWith(
      enrollKey: freezed == enrollKey
          ? _self.enrollKey
          : enrollKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EnrollCourseModel implements EnrollCourseModel {
  const _EnrollCourseModel({@JsonKey(name: 'enroll_key') this.enrollKey});
  factory _EnrollCourseModel.fromJson(Map<String, dynamic> json) =>
      _$EnrollCourseModelFromJson(json);

  @override
  @JsonKey(name: 'enroll_key')
  final String? enrollKey;

  /// Create a copy of EnrollCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EnrollCourseModelCopyWith<_EnrollCourseModel> get copyWith =>
      __$EnrollCourseModelCopyWithImpl<_EnrollCourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EnrollCourseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EnrollCourseModel &&
            (identical(other.enrollKey, enrollKey) ||
                other.enrollKey == enrollKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, enrollKey);

  @override
  String toString() {
    return 'EnrollCourseModel(enrollKey: $enrollKey)';
  }
}

/// @nodoc
abstract mixin class _$EnrollCourseModelCopyWith<$Res>
    implements $EnrollCourseModelCopyWith<$Res> {
  factory _$EnrollCourseModelCopyWith(
          _EnrollCourseModel value, $Res Function(_EnrollCourseModel) _then) =
      __$EnrollCourseModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'enroll_key') String? enrollKey});
}

/// @nodoc
class __$EnrollCourseModelCopyWithImpl<$Res>
    implements _$EnrollCourseModelCopyWith<$Res> {
  __$EnrollCourseModelCopyWithImpl(this._self, this._then);

  final _EnrollCourseModel _self;
  final $Res Function(_EnrollCourseModel) _then;

  /// Create a copy of EnrollCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? enrollKey = freezed,
  }) {
    return _then(_EnrollCourseModel(
      enrollKey: freezed == enrollKey
          ? _self.enrollKey
          : enrollKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

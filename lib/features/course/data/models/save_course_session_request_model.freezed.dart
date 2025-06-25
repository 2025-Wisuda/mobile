// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_course_session_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveCourseSessionRequestModel {
  @JsonKey(name: 'title', includeIfNull: false)
  String? get title;
  @JsonKey(name: 'description', includeIfNull: false)
  String? get description;
  @JsonKey(name: 'type', includeIfNull: false)
  String? get type;
  @JsonKey(name: 'date', includeIfNull: false)
  String? get date;
  @JsonKey(name: 'start_time', includeIfNull: false)
  String? get startTime;
  @JsonKey(name: 'end_time', includeIfNull: false)
  String? get endTime;
  @JsonKey(name: 'status', includeIfNull: false)
  String? get status;
  @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
  List<String>? get teachingAssistants;

  /// Create a copy of SaveCourseSessionRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveCourseSessionRequestModelCopyWith<SaveCourseSessionRequestModel>
      get copyWith => _$SaveCourseSessionRequestModelCopyWithImpl<
              SaveCourseSessionRequestModel>(
          this as SaveCourseSessionRequestModel, _$identity);

  /// Serializes this SaveCourseSessionRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveCourseSessionRequestModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.teachingAssistants, teachingAssistants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      type,
      date,
      startTime,
      endTime,
      status,
      const DeepCollectionEquality().hash(teachingAssistants));

  @override
  String toString() {
    return 'SaveCourseSessionRequestModel(title: $title, description: $description, type: $type, date: $date, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants)';
  }
}

/// @nodoc
abstract mixin class $SaveCourseSessionRequestModelCopyWith<$Res> {
  factory $SaveCourseSessionRequestModelCopyWith(
          SaveCourseSessionRequestModel value,
          $Res Function(SaveCourseSessionRequestModel) _then) =
      _$SaveCourseSessionRequestModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'title', includeIfNull: false) String? title,
      @JsonKey(name: 'description', includeIfNull: false) String? description,
      @JsonKey(name: 'type', includeIfNull: false) String? type,
      @JsonKey(name: 'date', includeIfNull: false) String? date,
      @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
      @JsonKey(name: 'status', includeIfNull: false) String? status,
      @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
      List<String>? teachingAssistants});
}

/// @nodoc
class _$SaveCourseSessionRequestModelCopyWithImpl<$Res>
    implements $SaveCourseSessionRequestModelCopyWith<$Res> {
  _$SaveCourseSessionRequestModelCopyWithImpl(this._self, this._then);

  final SaveCourseSessionRequestModel _self;
  final $Res Function(SaveCourseSessionRequestModel) _then;

  /// Create a copy of SaveCourseSessionRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? status = freezed,
    Object? teachingAssistants = freezed,
  }) {
    return _then(_self.copyWith(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      teachingAssistants: freezed == teachingAssistants
          ? _self.teachingAssistants
          : teachingAssistants // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SaveCourseSessionRequestModel implements SaveCourseSessionRequestModel {
  const _SaveCourseSessionRequestModel(
      {@JsonKey(name: 'title', includeIfNull: false) this.title,
      @JsonKey(name: 'description', includeIfNull: false) this.description,
      @JsonKey(name: 'type', includeIfNull: false) this.type,
      @JsonKey(name: 'date', includeIfNull: false) this.date,
      @JsonKey(name: 'start_time', includeIfNull: false) this.startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) this.endTime,
      @JsonKey(name: 'status', includeIfNull: false) this.status,
      @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
      final List<String>? teachingAssistants})
      : _teachingAssistants = teachingAssistants;
  factory _SaveCourseSessionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveCourseSessionRequestModelFromJson(json);

  @override
  @JsonKey(name: 'title', includeIfNull: false)
  final String? title;
  @override
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @override
  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  @override
  @JsonKey(name: 'date', includeIfNull: false)
  final String? date;
  @override
  @JsonKey(name: 'start_time', includeIfNull: false)
  final String? startTime;
  @override
  @JsonKey(name: 'end_time', includeIfNull: false)
  final String? endTime;
  @override
  @JsonKey(name: 'status', includeIfNull: false)
  final String? status;
  final List<String>? _teachingAssistants;
  @override
  @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
  List<String>? get teachingAssistants {
    final value = _teachingAssistants;
    if (value == null) return null;
    if (_teachingAssistants is EqualUnmodifiableListView)
      return _teachingAssistants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SaveCourseSessionRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaveCourseSessionRequestModelCopyWith<_SaveCourseSessionRequestModel>
      get copyWith => __$SaveCourseSessionRequestModelCopyWithImpl<
          _SaveCourseSessionRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SaveCourseSessionRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveCourseSessionRequestModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._teachingAssistants, _teachingAssistants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      type,
      date,
      startTime,
      endTime,
      status,
      const DeepCollectionEquality().hash(_teachingAssistants));

  @override
  String toString() {
    return 'SaveCourseSessionRequestModel(title: $title, description: $description, type: $type, date: $date, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants)';
  }
}

/// @nodoc
abstract mixin class _$SaveCourseSessionRequestModelCopyWith<$Res>
    implements $SaveCourseSessionRequestModelCopyWith<$Res> {
  factory _$SaveCourseSessionRequestModelCopyWith(
          _SaveCourseSessionRequestModel value,
          $Res Function(_SaveCourseSessionRequestModel) _then) =
      __$SaveCourseSessionRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title', includeIfNull: false) String? title,
      @JsonKey(name: 'description', includeIfNull: false) String? description,
      @JsonKey(name: 'type', includeIfNull: false) String? type,
      @JsonKey(name: 'date', includeIfNull: false) String? date,
      @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
      @JsonKey(name: 'status', includeIfNull: false) String? status,
      @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
      List<String>? teachingAssistants});
}

/// @nodoc
class __$SaveCourseSessionRequestModelCopyWithImpl<$Res>
    implements _$SaveCourseSessionRequestModelCopyWith<$Res> {
  __$SaveCourseSessionRequestModelCopyWithImpl(this._self, this._then);

  final _SaveCourseSessionRequestModel _self;
  final $Res Function(_SaveCourseSessionRequestModel) _then;

  /// Create a copy of SaveCourseSessionRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? status = freezed,
    Object? teachingAssistants = freezed,
  }) {
    return _then(_SaveCourseSessionRequestModel(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      teachingAssistants: freezed == teachingAssistants
          ? _self._teachingAssistants
          : teachingAssistants // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on

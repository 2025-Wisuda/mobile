// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseSessionModel {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'type')
  String? get type;
  @JsonKey(name: 'date')
  DateTime? get date;
  @JsonKey(name: 'start_time')
  String? get startTime;
  @JsonKey(name: 'end_time')
  String? get endTime;
  @JsonKey(name: 'status')
  String? get status;
  @JsonKey(name: 'teaching_assistants')
  List<UserModel>? get teachingAssistants;
  @JsonKey(name: 'teaching_assistant_ids')
  List<String>? get teachingAssistantIds;

  /// Create a copy of CourseSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CourseSessionModelCopyWith<CourseSessionModel> get copyWith =>
      _$CourseSessionModelCopyWithImpl<CourseSessionModel>(
          this as CourseSessionModel, _$identity);

  /// Serializes this CourseSessionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CourseSessionModel &&
            (identical(other.id, id) || other.id == id) &&
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
                .equals(other.teachingAssistants, teachingAssistants) &&
            const DeepCollectionEquality()
                .equals(other.teachingAssistantIds, teachingAssistantIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      date,
      startTime,
      endTime,
      status,
      const DeepCollectionEquality().hash(teachingAssistants),
      const DeepCollectionEquality().hash(teachingAssistantIds));

  @override
  String toString() {
    return 'CourseSessionModel(id: $id, title: $title, description: $description, type: $type, date: $date, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants, teachingAssistantIds: $teachingAssistantIds)';
  }
}

/// @nodoc
abstract mixin class $CourseSessionModelCopyWith<$Res> {
  factory $CourseSessionModelCopyWith(
          CourseSessionModel value, $Res Function(CourseSessionModel) _then) =
      _$CourseSessionModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'teaching_assistants') List<UserModel>? teachingAssistants,
      @JsonKey(name: 'teaching_assistant_ids')
      List<String>? teachingAssistantIds});
}

/// @nodoc
class _$CourseSessionModelCopyWithImpl<$Res>
    implements $CourseSessionModelCopyWith<$Res> {
  _$CourseSessionModelCopyWithImpl(this._self, this._then);

  final CourseSessionModel _self;
  final $Res Function(CourseSessionModel) _then;

  /// Create a copy of CourseSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? status = freezed,
    Object? teachingAssistants = freezed,
    Object? teachingAssistantIds = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as DateTime?,
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
              as List<UserModel>?,
      teachingAssistantIds: freezed == teachingAssistantIds
          ? _self.teachingAssistantIds
          : teachingAssistantIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CourseSessionModel implements CourseSessionModel {
  const _CourseSessionModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'teaching_assistants')
      final List<UserModel>? teachingAssistants,
      @JsonKey(name: 'teaching_assistant_ids')
      final List<String>? teachingAssistantIds})
      : _teachingAssistants = teachingAssistants,
        _teachingAssistantIds = teachingAssistantIds;
  factory _CourseSessionModel.fromJson(Map<String, dynamic> json) =>
      _$CourseSessionModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'date')
  final DateTime? date;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'status')
  final String? status;
  final List<UserModel>? _teachingAssistants;
  @override
  @JsonKey(name: 'teaching_assistants')
  List<UserModel>? get teachingAssistants {
    final value = _teachingAssistants;
    if (value == null) return null;
    if (_teachingAssistants is EqualUnmodifiableListView)
      return _teachingAssistants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _teachingAssistantIds;
  @override
  @JsonKey(name: 'teaching_assistant_ids')
  List<String>? get teachingAssistantIds {
    final value = _teachingAssistantIds;
    if (value == null) return null;
    if (_teachingAssistantIds is EqualUnmodifiableListView)
      return _teachingAssistantIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of CourseSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CourseSessionModelCopyWith<_CourseSessionModel> get copyWith =>
      __$CourseSessionModelCopyWithImpl<_CourseSessionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CourseSessionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseSessionModel &&
            (identical(other.id, id) || other.id == id) &&
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
                .equals(other._teachingAssistants, _teachingAssistants) &&
            const DeepCollectionEquality()
                .equals(other._teachingAssistantIds, _teachingAssistantIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      date,
      startTime,
      endTime,
      status,
      const DeepCollectionEquality().hash(_teachingAssistants),
      const DeepCollectionEquality().hash(_teachingAssistantIds));

  @override
  String toString() {
    return 'CourseSessionModel(id: $id, title: $title, description: $description, type: $type, date: $date, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants, teachingAssistantIds: $teachingAssistantIds)';
  }
}

/// @nodoc
abstract mixin class _$CourseSessionModelCopyWith<$Res>
    implements $CourseSessionModelCopyWith<$Res> {
  factory _$CourseSessionModelCopyWith(
          _CourseSessionModel value, $Res Function(_CourseSessionModel) _then) =
      __$CourseSessionModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'teaching_assistants') List<UserModel>? teachingAssistants,
      @JsonKey(name: 'teaching_assistant_ids')
      List<String>? teachingAssistantIds});
}

/// @nodoc
class __$CourseSessionModelCopyWithImpl<$Res>
    implements _$CourseSessionModelCopyWith<$Res> {
  __$CourseSessionModelCopyWithImpl(this._self, this._then);

  final _CourseSessionModel _self;
  final $Res Function(_CourseSessionModel) _then;

  /// Create a copy of CourseSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? status = freezed,
    Object? teachingAssistants = freezed,
    Object? teachingAssistantIds = freezed,
  }) {
    return _then(_CourseSessionModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as DateTime?,
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
              as List<UserModel>?,
      teachingAssistantIds: freezed == teachingAssistantIds
          ? _self._teachingAssistantIds
          : teachingAssistantIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on

class LabScheduleFilterParamsModel {
  final String? activityType;
  final String? approvalStatus;
  final String? createdBy;
  final String? endDate;
  final String? ordering;
  final int page;
  final int pageSize;
  final String? scheduleDate;
  final String? search;
  final String? startDate;

  LabScheduleFilterParamsModel({
    this.activityType,
    this.approvalStatus,
    this.createdBy,
    this.endDate,
    this.ordering,
    this.page = 1,
    this.pageSize = 10,
    this.scheduleDate,
    this.search,
    this.startDate,
  });

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};

    if (activityType != null && activityType!.isNotEmpty) {
      params['activity_type'] = activityType;
    }
    if (approvalStatus != null && approvalStatus!.isNotEmpty) {
      params['approval_status'] = approvalStatus;
    }
    if (createdBy != null && createdBy!.isNotEmpty) {
      params['created_by'] = createdBy;
    }
    if (endDate != null && endDate!.isNotEmpty) params['end_date'] = endDate;
    if (ordering != null && ordering!.isNotEmpty) params['ordering'] = ordering;
    if (scheduleDate != null && scheduleDate!.isNotEmpty) {
      params['schedule_date'] = scheduleDate;
    }
    if (search != null && search!.isNotEmpty) params['search'] = search;
    if (startDate != null && startDate!.isNotEmpty) {
      params['start_date'] = startDate;
    }

    params['page'] = page;
    params['page_size'] = pageSize;

    return params;
  }
}

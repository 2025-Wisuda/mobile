class RoomBookingFilterParamsModel {
  final String? date;
  final String? bookingType;
  final String? approvalStatus;
  final String? ordering;
  final int page;
  final int pageSize;
  final String? search;

  RoomBookingFilterParamsModel({
    this.date,
    this.bookingType,
    this.approvalStatus,
    this.ordering,
    this.page = 1,
    this.pageSize = 10,
    this.search,
  });

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};
    if (date != null && date!.isNotEmpty) {
      params['date'] = date;
    }
    if (bookingType != null && bookingType!.isNotEmpty) {
      params['booking_type'] = bookingType;
    }
    if (approvalStatus != null && approvalStatus!.isNotEmpty) {
      params['approval_status'] = approvalStatus;
    }
    if (ordering != null && ordering!.isNotEmpty) {
      params['ordering'] = ordering;
    }
    if (search != null && search!.isNotEmpty) {
      params['search'] = search;
    }

    params['page'] = page;
    params['page_size'] = pageSize;

    return params;
  }

  RoomBookingFilterParamsModel copyWith({
    String? date,
    String? bookingType,
    String? approvalStatus,
    String? ordering,
    int? page,
    int? pageSize,
    String? search,
  }) {
    return RoomBookingFilterParamsModel(
      date: date ?? this.date,
      bookingType: bookingType ?? this.bookingType,
      approvalStatus: approvalStatus ?? this.approvalStatus,
      ordering: ordering ?? this.ordering,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      search: search ?? this.search,
    );
  }
}

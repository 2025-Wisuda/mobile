import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:mobile/features/duty/data/models/model.dart';
import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_list_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/failure.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/date_helper.dart';

class ListAttendanceRecordsController extends GetBaseListController<
    DutyAttendanceEntity, DutyAttendanceFilterParamsModel> {
  final FetchListAttendanceRecordsUsecase _fetchListAttendanceRecordsUsecase;

  final Rx<String?> selectedStatus = Rxn<String>();
  final Rx<DateTime?> selectedDate = Rxn<DateTime>();

  ListAttendanceRecordsController(this._fetchListAttendanceRecordsUsecase) {
    hasSearchEnabled.value = false;
  }

  @override
  String get baseStateKey => 'listAttendanceRecords';

  RxList<DutyAttendanceEntity> get attendanceList => items;

  @override
  Future<Either<Failure, BaseListResponseEntity<DutyAttendanceEntity>>>
      executeUsecase(DutyAttendanceFilterParamsModel params) async {
    return await _fetchListAttendanceRecordsUsecase.execute(
      params: params,
    );
  }

  @override
  DutyAttendanceFilterParamsModel createFilterParams({
    required int page,
    required int pageSize,
    String? search,
    Map<String, dynamic>? filters,
  }) {
    return DutyAttendanceFilterParamsModel(
      page: page,
      pageSize: pageSize,
      date: filters?['date'] as String?,
      status: filters?['status'] as String?,
    );
  }

  Future<void> setStatusFilter(String status) async {
    selectedStatus.value = status;
    final filters = <String, dynamic>{'status': status};
    if (selectedDate.value != null) {
      filters['date'] = DateHelper.formatIsoDate(date: selectedDate.value!);
    }
    await setFilters(filters);
  }

  Future<void> setDateFilter(DateTime date) async {
    selectedDate.value = date;
    final filters = <String, dynamic>{
      'date': DateHelper.formatIsoDate(date: date)
    };
    if (selectedStatus.value != null) {
      filters['status'] = selectedStatus.value;
    }
    await setFilters(filters);
  }

  @override
  Future<void> clearFilters() async {
    selectedStatus.value = null;
    selectedDate.value = null;
    await super.clearFilters();
  }

  bool get hasFiltersApplied =>
      selectedStatus.value != null || selectedDate.value != null;

  String get filtersDescription {
    final status = 'dutySchedule'.message('status');
    final date = 'dutySchedule'.message('date');
    final parts = <String>[];
    if (selectedStatus.value != null) parts.add('$status: $selectedStatus');
    if (selectedDate.value != null) {
      parts.add('$date: ${DateHelper.formatDateWithYear(selectedDate.value!)}');
    }
    return parts.join('\n');
  }
}

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

class DutyScheduleText {
  static String tryFetchListDutySchedule(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.schedule.duty.fetchListDutySchedule.error.400'.tr();
      case 401:
        return 'features.schedule.duty.fetchListDutySchedule.error.401'.tr();
      case 403:
        return 'features.schedule.duty.fetchListDutySchedule.error.403'.tr();
      case 404:
        return 'features.schedule.duty.fetchListDutySchedule.error.404'.tr();
      case 408:
        return 'features.schedule.duty.fetchListDutySchedule.error.408'.tr();
      case 409:
        return 'features.schedule.duty.fetchListDutySchedule.error.409'.tr();
      case 422:
        return 'features.schedule.duty.fetchListDutySchedule.error.422'.tr();
      case 429:
        return 'features.schedule.duty.fetchListDutySchedule.error.429'.tr();
      case 500:
        return 'features.schedule.duty.fetchListDutySchedule.error.500'.tr();
      default:
        return 'features.schedule.duty.fetchListDutySchedule.error.default'
            .tr();
    }
  }

  static String catchFetchListDutySchedule(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchListDutySchedule(e.response!.statusCode);
    } else {
      return 'features.schedule.duty.fetchListDutySchedule.error.default'.tr();
    }
  }

  static String tryFetchDutyScheduleDetail(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.schedule.duty.fetchDutyScheduleDetail.error.400'.tr();
      case 401:
        return 'features.schedule.duty.fetchDutyScheduleDetail.error.401'.tr();
      case 403:
        return 'features.schedule.duty.fetchDutyScheduleDetail.error.403'.tr();
      case 404:
        return 'features.schedule.duty.fetchDutyScheduleDetail.error.404'.tr();
      case 408:
        return 'features.schedule.duty.fetchDutyScheduleDetail.error.408'.tr();
      case 409:
        return 'features.schedule.duty.fetchDutyScheduleDetail.error.409'.tr();
      case 422:
        return 'features.schedule.duty.fetchDutyScheduleDetail.error.422'.tr();
      case 429:
        return 'features.schedule.duty.fetchDutyScheduleDetail.error.429'.tr();
      case 500:
        return 'features.schedule.duty.fetchDutyScheduleDetail.error.500'.tr();
      default:
        return 'features.schedule.duty.fetchDutyScheduleDetail.error.default'
            .tr();
    }
  }

  static String catchFetchDutyScheduleDetail(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchDutyScheduleDetail(e.response!.statusCode);
    } else {
      return 'features.schedule.duty.fetchDutyScheduleDetail.error.default'
          .tr();
    }
  }
}

// Package imports:
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart' as i18n;

class DutyScheduleText {
  static String tryFetchListDutySchedule(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr(
          'features.schedule.duty.fetchListDutySchedule.error.400',
        );
      case 401:
        return i18n.tr(
          'features.schedule.duty.fetchListDutySchedule.error.401',
        );
      case 403:
        return i18n.tr(
          'features.schedule.duty.fetchListDutySchedule.error.403',
        );
      case 404:
        return i18n.tr(
          'features.schedule.duty.fetchListDutySchedule.error.404',
        );
      case 408:
        return i18n.tr(
          'features.schedule.duty.fetchListDutySchedule.error.408',
        );
      case 409:
        return i18n.tr(
          'features.schedule.duty.fetchListDutySchedule.error.409',
        );
      case 422:
        return i18n.tr(
          'features.schedule.duty.fetchListDutySchedule.error.422',
        );
      case 429:
        return i18n.tr(
          'features.schedule.duty.fetchListDutySchedule.error.429',
        );
      case 500:
        return i18n.tr(
          'features.schedule.duty.fetchListDutySchedule.error.500',
        );
      default:
        return 'features.schedule.duty.fetchListDutySchedule.error.default'
            .tr();
    }
  }

  static String catchFetchListDutySchedule(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchListDutySchedule(e.response!.statusCode);
    } else {
      return i18n.tr(
        'features.schedule.duty.fetchListDutySchedule.error.default',
      );
    }
  }

  static String tryFetchDutyScheduleDetail(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr(
          'features.schedule.duty.fetchDutyScheduleDetail.error.400',
        );
      case 401:
        return i18n.tr(
          'features.schedule.duty.fetchDutyScheduleDetail.error.401',
        );
      case 403:
        return i18n.tr(
          'features.schedule.duty.fetchDutyScheduleDetail.error.403',
        );
      case 404:
        return i18n.tr(
          'features.schedule.duty.fetchDutyScheduleDetail.error.404',
        );
      case 408:
        return i18n.tr(
          'features.schedule.duty.fetchDutyScheduleDetail.error.408',
        );
      case 409:
        return i18n.tr(
          'features.schedule.duty.fetchDutyScheduleDetail.error.409',
        );
      case 422:
        return i18n.tr(
          'features.schedule.duty.fetchDutyScheduleDetail.error.422',
        );
      case 429:
        return i18n.tr(
          'features.schedule.duty.fetchDutyScheduleDetail.error.429',
        );
      case 500:
        return i18n.tr(
          'features.schedule.duty.fetchDutyScheduleDetail.error.500',
        );
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

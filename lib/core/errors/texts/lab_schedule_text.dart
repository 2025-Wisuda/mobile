// Package imports:
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart' as i18n;

class LabScheduleText {
  static String tryFetchListLabSchedule(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.schedule.lab.fetchListLabSchedule.error.400');
      case 401:
        return i18n.tr('features.schedule.lab.fetchListLabSchedule.error.401');
      case 403:
        return i18n.tr('features.schedule.lab.fetchListLabSchedule.error.403');
      case 404:
        return i18n.tr('features.schedule.lab.fetchListLabSchedule.error.404');
      case 408:
        return i18n.tr('features.schedule.lab.fetchListLabSchedule.error.408');
      case 409:
        return i18n.tr('features.schedule.lab.fetchListLabSchedule.error.409');
      case 422:
        return i18n.tr('features.schedule.lab.fetchListLabSchedule.error.422');
      case 429:
        return i18n.tr('features.schedule.lab.fetchListLabSchedule.error.429');
      case 500:
        return i18n.tr('features.schedule.lab.fetchListLabSchedule.error.500');
      default:
        return i18n.tr(
          'features.schedule.lab.fetchListLabSchedule.error.default',
        );
    }
  }

  static String catchFetchListLabSchedule(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchListLabSchedule(e.response!.statusCode);
    } else {
      return i18n.tr(
        'features.schedule.lab.fetchListLabSchedule.error.default',
      );
    }
  }

  static String tryFetchLabScheduleDetail(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr(
          'features.schedule.lab.fetchLabScheduleDetail.error.400',
        );
      case 401:
        return i18n.tr(
          'features.schedule.lab.fetchLabScheduleDetail.error.401',
        );
      case 403:
        return i18n.tr(
          'features.schedule.lab.fetchLabScheduleDetail.error.403',
        );
      case 404:
        return i18n.tr(
          'features.schedule.lab.fetchLabScheduleDetail.error.404',
        );
      case 408:
        return i18n.tr(
          'features.schedule.lab.fetchLabScheduleDetail.error.408',
        );
      case 409:
        return i18n.tr(
          'features.schedule.lab.fetchLabScheduleDetail.error.409',
        );
      case 422:
        return i18n.tr(
          'features.schedule.lab.fetchLabScheduleDetail.error.422',
        );
      case 429:
        return i18n.tr(
          'features.schedule.lab.fetchLabScheduleDetail.error.429',
        );
      case 500:
        return i18n.tr(
          'features.schedule.lab.fetchLabScheduleDetail.error.500',
        );
      default:
        return 'features.schedule.lab.fetchLabScheduleDetail.error.default'
            .tr();
    }
  }

  static String catchFetchLabScheduleDetail(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchLabScheduleDetail(e.response!.statusCode);
    } else {
      return i18n.tr(
        'features.schedule.lab.fetchLabScheduleDetail.error.default',
      );
    }
  }

  static String tryUpdateLabSchedule(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.schedule.lab.updateLabSchedule.error.400');
      case 401:
        return i18n.tr('features.schedule.lab.updateLabSchedule.error.401');
      case 403:
        return i18n.tr('features.schedule.lab.updateLabSchedule.error.403');
      case 404:
        return i18n.tr('features.schedule.lab.updateLabSchedule.error.404');
      case 408:
        return i18n.tr('features.schedule.lab.updateLabSchedule.error.408');
      case 409:
        return i18n.tr('features.schedule.lab.updateLabSchedule.error.409');
      case 422:
        return i18n.tr('features.schedule.lab.updateLabSchedule.error.422');
      case 429:
        return i18n.tr('features.schedule.lab.updateLabSchedule.error.429');
      case 500:
        return i18n.tr('features.schedule.lab.updateLabSchedule.error.500');
      default:
        return i18n.tr('features.schedule.lab.updateLabSchedule.error.default');
    }
  }

  static String catchUpdateLabSchedule(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryUpdateLabSchedule(e.response!.statusCode);
    } else {
      return i18n.tr('features.schedule.lab.updateLabSchedule.error.default');
    }
  }

  static String tryApproveLabSchedule(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.schedule.lab.approveLabSchedule.error.400');
      case 401:
        return i18n.tr('features.schedule.lab.approveLabSchedule.error.401');
      case 403:
        return i18n.tr('features.schedule.lab.approveLabSchedule.error.403');
      case 404:
        return i18n.tr('features.schedule.lab.approveLabSchedule.error.404');
      case 408:
        return i18n.tr('features.schedule.lab.approveLabSchedule.error.408');
      case 409:
        return i18n.tr('features.schedule.lab.approveLabSchedule.error.409');
      case 422:
        return i18n.tr('features.schedule.lab.approveLabSchedule.error.422');
      case 429:
        return i18n.tr('features.schedule.lab.approveLabSchedule.error.429');
      case 500:
        return i18n.tr('features.schedule.lab.approveLabSchedule.error.500');
      default:
        return i18n.tr(
          'features.schedule.lab.approveLabSchedule.error.default',
        );
    }
  }

  static String catchApproveLabSchedule(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryApproveLabSchedule(e.response!.statusCode);
    } else {
      return i18n.tr('features.schedule.lab.approveLabSchedule.error.default');
    }
  }

  static String tryDeleteLabSchedule(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.schedule.lab.deleteLabSchedule.error.400');
      case 401:
        return i18n.tr('features.schedule.lab.deleteLabSchedule.error.401');
      case 403:
        return i18n.tr('features.schedule.lab.deleteLabSchedule.error.403');
      case 404:
        return i18n.tr('features.schedule.lab.deleteLabSchedule.error.404');
      case 408:
        return i18n.tr('features.schedule.lab.deleteLabSchedule.error.408');
      case 409:
        return i18n.tr('features.schedule.lab.deleteLabSchedule.error.409');
      case 422:
        return i18n.tr('features.schedule.lab.deleteLabSchedule.error.422');
      case 429:
        return i18n.tr('features.schedule.lab.deleteLabSchedule.error.429');
      case 500:
        return i18n.tr('features.schedule.lab.deleteLabSchedule.error.500');
      default:
        return i18n.tr('features.schedule.lab.deleteLabSchedule.error.default');
    }
  }

  static String catchDeleteLabSchedule(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryDeleteLabSchedule(e.response!.statusCode);
    } else {
      return i18n.tr('features.schedule.lab.deleteLabSchedule.error.default');
    }
  }
}

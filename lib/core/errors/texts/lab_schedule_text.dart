import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

class LabScheduleText {
  static String tryFetchListLabSchedule(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.schedule.lab.fetchListLabSchedule.error.400'.tr();
      case 401:
        return 'features.schedule.lab.fetchListLabSchedule.error.401'.tr();
      case 403:
        return 'features.schedule.lab.fetchListLabSchedule.error.403'.tr();
      case 404:
        return 'features.schedule.lab.fetchListLabSchedule.error.404'.tr();
      case 408:
        return 'features.schedule.lab.fetchListLabSchedule.error.408'.tr();
      case 409:
        return 'features.schedule.lab.fetchListLabSchedule.error.409'.tr();
      case 422:
        return 'features.schedule.lab.fetchListLabSchedule.error.422'.tr();
      case 429:
        return 'features.schedule.lab.fetchListLabSchedule.error.429'.tr();
      case 500:
        return 'features.schedule.lab.fetchListLabSchedule.error.500'.tr();
      default:
        return 'features.schedule.lab.fetchListLabSchedule.error.default'.tr();
    }
  }

  static String catchFetchListLabSchedule(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchListLabSchedule(e.response!.statusCode);
    } else {
      return 'features.schedule.lab.fetchListLabSchedule.error.default'.tr();
    }
  }

  static String tryFetchLabScheduleDetail(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.schedule.lab.fetchLabScheduleDetail.error.400'.tr();
      case 401:
        return 'features.schedule.lab.fetchLabScheduleDetail.error.401'.tr();
      case 403:
        return 'features.schedule.lab.fetchLabScheduleDetail.error.403'.tr();
      case 404:
        return 'features.schedule.lab.fetchLabScheduleDetail.error.404'.tr();
      case 408:
        return 'features.schedule.lab.fetchLabScheduleDetail.error.408'.tr();
      case 409:
        return 'features.schedule.lab.fetchLabScheduleDetail.error.409'.tr();
      case 422:
        return 'features.schedule.lab.fetchLabScheduleDetail.error.422'.tr();
      case 429:
        return 'features.schedule.lab.fetchLabScheduleDetail.error.429'.tr();
      case 500:
        return 'features.schedule.lab.fetchLabScheduleDetail.error.500'.tr();
      default:
        return 'features.schedule.lab.fetchLabScheduleDetail.error.default'
            .tr();
    }
  }

  static String catchFetchLabScheduleDetail(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchLabScheduleDetail(e.response!.statusCode);
    } else {
      return 'features.schedule.lab.fetchLabScheduleDetail.error.default'.tr();
    }
  }

  static String tryUpdateLabSchedule(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.schedule.lab.updateLabSchedule.error.400'.tr();
      case 401:
        return 'features.schedule.lab.updateLabSchedule.error.401'.tr();
      case 403:
        return 'features.schedule.lab.updateLabSchedule.error.403'.tr();
      case 404:
        return 'features.schedule.lab.updateLabSchedule.error.404'.tr();
      case 408:
        return 'features.schedule.lab.updateLabSchedule.error.408'.tr();
      case 409:
        return 'features.schedule.lab.updateLabSchedule.error.409'.tr();
      case 422:
        return 'features.schedule.lab.updateLabSchedule.error.422'.tr();
      case 429:
        return 'features.schedule.lab.updateLabSchedule.error.429'.tr();
      case 500:
        return 'features.schedule.lab.updateLabSchedule.error.500'.tr();
      default:
        return 'features.schedule.lab.updateLabSchedule.error.default'.tr();
    }
  }

  static String catchUpdateLabSchedule(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryUpdateLabSchedule(e.response!.statusCode);
    } else {
      return 'features.schedule.lab.updateLabSchedule.error.default'.tr();
    }
  }

  static String tryApproveLabSchedule(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.schedule.lab.approveLabSchedule.error.400'.tr();
      case 401:
        return 'features.schedule.lab.approveLabSchedule.error.401'.tr();
      case 403:
        return 'features.schedule.lab.approveLabSchedule.error.403'.tr();
      case 404:
        return 'features.schedule.lab.approveLabSchedule.error.404'.tr();
      case 408:
        return 'features.schedule.lab.approveLabSchedule.error.408'.tr();
      case 409:
        return 'features.schedule.lab.approveLabSchedule.error.409'.tr();
      case 422:
        return 'features.schedule.lab.approveLabSchedule.error.422'.tr();
      case 429:
        return 'features.schedule.lab.approveLabSchedule.error.429'.tr();
      case 500:
        return 'features.schedule.lab.approveLabSchedule.error.500'.tr();
      default:
        return 'features.schedule.lab.approveLabSchedule.error.default'.tr();
    }
  }

  static String catchApproveLabSchedule(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryApproveLabSchedule(e.response!.statusCode);
    } else {
      return 'features.schedule.lab.approveLabSchedule.error.default'.tr();
    }
  }

  static String tryDeleteLabSchedule(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.schedule.lab.deleteLabSchedule.error.400'.tr();
      case 401:
        return 'features.schedule.lab.deleteLabSchedule.error.401'.tr();
      case 403:
        return 'features.schedule.lab.deleteLabSchedule.error.403'.tr();
      case 404:
        return 'features.schedule.lab.deleteLabSchedule.error.404'.tr();
      case 408:
        return 'features.schedule.lab.deleteLabSchedule.error.408'.tr();
      case 409:
        return 'features.schedule.lab.deleteLabSchedule.error.409'.tr();
      case 422:
        return 'features.schedule.lab.deleteLabSchedule.error.422'.tr();
      case 429:
        return 'features.schedule.lab.deleteLabSchedule.error.429'.tr();
      case 500:
        return 'features.schedule.lab.deleteLabSchedule.error.500'.tr();
      default:
        return 'features.schedule.lab.deleteLabSchedule.error.default'.tr();
    }
  }

  static String catchDeleteLabSchedule(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryDeleteLabSchedule(e.response!.statusCode);
    } else {
      return 'features.schedule.lab.deleteLabSchedule.error.default'.tr();
    }
  }
}

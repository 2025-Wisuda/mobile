import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/core/errors/texts/text.dart';
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/shared/utils/util.dart';

abstract class DutyScheduleRemoteDataSource {
  Future<Either<Failure, ListDutyScheduleModel>> fetchListDutySchedule({
    DutyScheduleFilterParamsModel? params,
  });
  Future<Either<Failure, DutyScheduleModel>> fetchDutyScheduleDetail({
    required String dutyScheduleId,
  });
}

class DutyScheduleRemoteDataSourceImpl implements DutyScheduleRemoteDataSource {
  final Dio _dio;

  DutyScheduleRemoteDataSourceImpl(this._dio);
  @override
  Future<Either<Failure, ListDutyScheduleModel>> fetchListDutySchedule({
    DutyScheduleFilterParamsModel? params,
  }) async {
    try {
      LoggerUtil.logInfo('Fetch all duty schedules request');

      final queryParams = params?.toQueryParameters() ?? {};
      final stringParams = queryParams.map(
        (key, value) => MapEntry(key, value.toString()),
      );
      final uri = Uri.parse(
        BaseUrlUtil.dutyScheduleUrl,
      ).replace(queryParameters: stringParams);

      LoggerUtil.logInfo('GET ${uri.toString()}');

      final response = await _dio.get(
        BaseUrlUtil.dutyScheduleUrl,
        queryParameters: stringParams,
      );

      LoggerUtil.logInfo(
        'Fetch list duty schedules response: ${LoggerUtil.prettyJson(response.data)}',
      );

      if (response.statusCode == 200) {
        return right(ListDutyScheduleModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(
            DutyScheduleText.tryFetchListDutySchedule(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Fetch all duty schedules error: ${e.toString()}');
      return left(
        ServerFailure(DutyScheduleText.catchFetchListDutySchedule(e)),
      );
    }
  }

  @override
  Future<Either<Failure, DutyScheduleModel>> fetchDutyScheduleDetail({
    required String dutyScheduleId,
  }) async {
    try {
      LoggerUtil.logInfo('Fetch duty schedule detail request: $dutyScheduleId');
      LoggerUtil.logInfo('GET ${BaseUrlUtil.dutyScheduleUrl}/$dutyScheduleId');
      final response = await _dio.get(
        '${BaseUrlUtil.dutyScheduleUrl}/$dutyScheduleId',
      );
      LoggerUtil.logInfo(
        'Fetch duty schedule detail response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 200) {
        return right(DutyScheduleModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(
            DutyScheduleText.tryFetchDutyScheduleDetail(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Fetch duty schedule detail error: ${e.toString()}');
      return left(
        ServerFailure(DutyScheduleText.catchFetchDutyScheduleDetail(e)),
      );
    }
  }
}

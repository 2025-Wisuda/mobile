// Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

// Project imports:
import 'package:mobile/core/errors/texts/text.dart';
import 'package:mobile/core/errors/types/type.dart';
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
      final queryParams = params?.toQueryParameters() ?? {};
      final stringParams = queryParams.map(
        (key, value) => MapEntry(key, value.toString()),
      );
      final response = await _dio.get(
        BaseUrlUtil.dutyScheduleUrl,
        queryParameters: stringParams,
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
      final response = await _dio.get(
        '${BaseUrlUtil.dutyScheduleUrl}/$dutyScheduleId',
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
      return left(
        ServerFailure(DutyScheduleText.catchFetchDutyScheduleDetail(e)),
      );
    }
  }
}

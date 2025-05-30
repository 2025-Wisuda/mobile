// Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

// Project imports:
import 'package:mobile/core/errors/texts/text.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/utils/util.dart';

abstract class LabScheduleRemoteDataSource {
  Future<Either<Failure, ListLabScheduleModel>> fetchListLabSchedule({
    LabScheduleFilterParamsModel? params,
  });
  Future<Either<Failure, LabScheduleModel>> fetchLabScheduleDetail({
    required String labScheduleId,
  });
  Future<Either<Failure, LabScheduleModel>> approveLabSchedule({
    required ApprovalLabScheduleRequestEntity data,
    required String labScheduleId,
  });
}

class LabScheduleRemoteDataSourceImpl implements LabScheduleRemoteDataSource {
  final Dio _dio;

  LabScheduleRemoteDataSourceImpl(this._dio);
  @override
  Future<Either<Failure, ListLabScheduleModel>> fetchListLabSchedule({
    LabScheduleFilterParamsModel? params,
  }) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final stringParams = queryParams.map(
        (key, value) => MapEntry(key, value.toString()),
      );
      final url = BaseUrlUtil.labScheduleUrl;
      final response = await _dio.get(url, queryParameters: stringParams);
      if (response.statusCode == 200) {
        return right(ListLabScheduleModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(
            LabScheduleText.tryFetchListLabSchedule(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      return left(ServerFailure(LabScheduleText.catchFetchListLabSchedule(e)));
    }
  }

  @override
  Future<Either<Failure, LabScheduleModel>> fetchLabScheduleDetail({
    required String labScheduleId,
  }) async {
    try {
      final url = '${BaseUrlUtil.labScheduleUrl}/$labScheduleId';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        return right(LabScheduleModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(
            LabScheduleText.tryFetchLabScheduleDetail(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      return left(
        ServerFailure(LabScheduleText.catchFetchLabScheduleDetail(e)),
      );
    }
  }

  @override
  Future<Either<Failure, LabScheduleModel>> approveLabSchedule({
    ApprovalLabScheduleRequestEntity? data,
    required String labScheduleId,
  }) async {
    try {
      final model = ApprovalLabScheduleRequestModelExtension.fromEntity(data!);
      final url = '${BaseUrlUtil.labScheduleUrl}/$labScheduleId/approval';
      final response = await _dio.put(url, data: model.toJson());
      if (response.statusCode == 200) {
        return right(LabScheduleModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(
            LabScheduleText.tryApproveLabSchedule(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      return left(ServerFailure(LabScheduleText.catchApproveLabSchedule(e)));
    }
  }
}

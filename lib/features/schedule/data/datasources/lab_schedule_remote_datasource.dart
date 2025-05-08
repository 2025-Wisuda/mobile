import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/core/errors/texts/text.dart';
import 'package:mobile/features/schedule/data/models/model.dart';
import 'package:mobile/features/schedule/domain/entities/entity.dart';
import 'package:mobile/shared/utils/util.dart';

abstract class LabScheduleRemoteDataSource {
  Future<Either<Failure, ListLabScheduleModel>> fetchListLabSchedule({
    LabScheduleFilterParamsModel? params,
  });
  Future<Either<Failure, LabScheduleModel>> fetchLabScheduleDetail({
    required String labScheduleId,
  });
  Future<Either<Failure, LabScheduleModel>> updateLabSchedule({
    required UpdateLabScheduleRequestEntity data,
    required String labScheduleId,
  });
  Future<Either<Failure, LabScheduleModel>> approveLabSchedule({
    required ApprovalLabScheduleRequestEntity data,
    required String labScheduleId,
  });
  Future<Either<Failure, LabScheduleModel>> deleteLabSchedule({
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
      LoggerUtil.logInfo('Fetch all lab schedules request');

      final queryParams = params?.toQueryParameters() ?? {};
      final stringParams = queryParams.map(
        (key, value) => MapEntry(key, value.toString()),
      );
      final uri = Uri.parse(
        BaseUrlUtil.labScheduleUrl,
      ).replace(queryParameters: stringParams);
      LoggerUtil.logInfo('GET ${uri.toString()}');

      final response = await _dio.get(
        BaseUrlUtil.labScheduleUrl,
        queryParameters: stringParams,
      );

      LoggerUtil.logInfo(
        'Fetch list lab schedules response: ${LoggerUtil.prettyJson(response.data)}',
      );

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
      LoggerUtil.logError('Fetch all lab schedules error: ${e.toString()}');
      return left(ServerFailure(LabScheduleText.catchFetchListLabSchedule(e)));
    }
  }

  @override
  Future<Either<Failure, LabScheduleModel>> fetchLabScheduleDetail({
    required String labScheduleId,
  }) async {
    try {
      LoggerUtil.logInfo('Fetch lab schedule detail request: $labScheduleId');
      LoggerUtil.logInfo('GET ${BaseUrlUtil.labScheduleUrl}/$labScheduleId');
      final response = await _dio.get(
        '${BaseUrlUtil.labScheduleUrl}/$labScheduleId',
      );
      LoggerUtil.logInfo(
        'Fetch lab schedule detail response: ${LoggerUtil.prettyJson(response.data)}',
      );
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
      LoggerUtil.logError('Fetch lab schedule detail error: ${e.toString()}');
      return left(
        ServerFailure(LabScheduleText.catchFetchLabScheduleDetail(e)),
      );
    }
  }

  @override
  Future<Either<Failure, LabScheduleModel>> updateLabSchedule({
    UpdateLabScheduleRequestEntity? data,
    required String labScheduleId,
  }) async {
    try {
      final model = UpdateLabScheduleRequestModelExtension.fromEntity(data!);
      LoggerUtil.logInfo(
        'Update lab schedule request: ${LoggerUtil.prettyJson(model.toJson())}',
      );
      final response = await _dio.put(
        '${BaseUrlUtil.labScheduleUrl}/$labScheduleId',
        data: model.toJson(),
      );
      LoggerUtil.logInfo(
        'Update lab schedule response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 200) {
        return right(LabScheduleModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(
            LabScheduleText.tryUpdateLabSchedule(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Update lab schedule error: ${e.toString()}');
      return left(ServerFailure(LabScheduleText.catchUpdateLabSchedule(e)));
    }
  }

  @override
  Future<Either<Failure, LabScheduleModel>> approveLabSchedule({
    ApprovalLabScheduleRequestEntity? data,
    required String labScheduleId,
  }) async {
    try {
      final model = ApprovalLabScheduleRequestModelExtension.fromEntity(data!);
      LoggerUtil.logInfo(
        'Approve lab schedule request: ${LoggerUtil.prettyJson(model.toJson())}',
      );
      final url = '${BaseUrlUtil.labScheduleUrl}/$labScheduleId/approval';
      final response = await _dio.put(url, data: model.toJson());
      LoggerUtil.logInfo(
        'Approve lab schedule response: ${LoggerUtil.prettyJson(response.data)}',
      );
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
      LoggerUtil.logError('Approve lab schedule error: ${e.toString()}');
      return left(ServerFailure(LabScheduleText.catchApproveLabSchedule(e)));
    }
  }

  @override
  Future<Either<Failure, LabScheduleModel>> deleteLabSchedule({
    required String labScheduleId,
  }) async {
    try {
      final response = await _dio.delete(
        '${BaseUrlUtil.labScheduleUrl}/$labScheduleId',
      );
      LoggerUtil.logInfo(
        'Delete lab schedule response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 200) {
        return right(LabScheduleModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(
            LabScheduleText.tryDeleteLabSchedule(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Delete lab schedule error: ${e.toString()}');
      return left(ServerFailure(LabScheduleText.catchDeleteLabSchedule(e)));
    }
  }
}

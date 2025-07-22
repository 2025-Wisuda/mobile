import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/notification/data/models/notification_filter_params_model.dart';
import 'package:mobile/features/notification/domain/entities/notification_entity.dart';
import 'package:mobile/features/notification/domain/repositories/notification_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class FetchNotificationsUsecase {
  final NotificationRepository notificationRepository;

  FetchNotificationsUsecase(this.notificationRepository);

  Future<Either<Failure, BaseListResponseEntity<NotificationEntity>>> execute({
    NotificationFilterParamsModel? params,
  }) {
    return notificationRepository.fetchNotifications(params: params);
  }
}

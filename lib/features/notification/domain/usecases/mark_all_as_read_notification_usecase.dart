import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/notification/domain/entities/entity.dart';
import 'package:mobile/features/notification/domain/repositories/notification_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class MarkAllAsReadNotificationUsecase {
  final NotificationRepository notificationRepository;

  MarkAllAsReadNotificationUsecase(this.notificationRepository);

  Future<Either<Failure, BaseResponseEntity<MarkAllAsReadResponseEntity>>>
      execute() {
    return notificationRepository.markAllAsRead();
  }
}

import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/notification/domain/entities/entity.dart';
import 'package:mobile/features/notification/domain/repositories/notification_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class MarkAsReadNotificationUsecase {
  final NotificationRepository notificationRepository;

  MarkAsReadNotificationUsecase(this.notificationRepository);

  Future<Either<Failure, BaseResponseEntity<MarkAsReadResponseEntity>>>
      execute({
    required String notificationId,
  }) {
    return notificationRepository.markAsRead(notificationId);
  }
}

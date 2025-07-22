import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/notification/domain/entities/entity.dart';
import 'package:mobile/features/notification/domain/repositories/notification_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class FetchUnreadCountNotificationUsecase {
  final NotificationRepository notificationRepository;

  FetchUnreadCountNotificationUsecase(this.notificationRepository);

  Future<Either<Failure, BaseResponseEntity<UnreadCountResponseEntity>>>
      execute() {
    return notificationRepository.fetchUnreadCount();
  }
}

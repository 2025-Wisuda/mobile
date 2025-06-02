import 'package:injectable/injectable.dart';

import 'package:mobile/core/network/network.dart';
import 'package:mobile/features/auth/domain/usecases/usecase.dart';
import 'package:mobile/shared/utils/logger_util.dart';

@singleton
class DependencyPostProcessor {
  final DioServiceNetwork dioServiceNetwork;
  final RefreshTokenUsecase refreshTokenUsecase;

  DependencyPostProcessor(this.dioServiceNetwork, this.refreshTokenUsecase) {
    final interceptor = AppInterceptor(
      refreshTokenUsecase: refreshTokenUsecase,
      showFullApiKeys: true,
      enableDetailedLogging: true,
    );

    dioServiceNetwork.setupInterceptor(interceptor);
    LoggerUtil.logInfo('✅ Interceptor configured');
  }
}

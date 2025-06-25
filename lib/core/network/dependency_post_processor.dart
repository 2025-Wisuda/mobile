import 'package:get/get.dart';

import 'package:mobile/core/network/network.dart';
import 'package:mobile/features/auth/domain/usecases/usecase.dart';

class DependencyPostProcessor {
  static void initialize() {
    final dioServiceNetwork = Get.find<DioServiceNetwork>();
    final refreshTokenUsecase = Get.find<RefreshTokenUsecase>();

    final interceptor = AppInterceptorNetwork(
      refreshTokenUsecase: refreshTokenUsecase,
      showFullApiKeys: true,
      enableDetailedLogging: true,
    );

    dioServiceNetwork.setupInterceptor(interceptor);
  }
}

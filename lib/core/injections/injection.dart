import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobile/core/network/network.dart';
import 'package:mobile/features/auth/auth.dart';

class Injection {
  static void init() {
    final refreshTokenUseCase = RefreshTokenUseCase(
      AuthRepositoryImpl(
        AuthRemoteDataSourceImpl(
          Dio(),
        ),
      ),
    );
    final dio = DioClientNetwork.createDio(refreshTokenUseCase);
    Get.put<Dio>(dio); 
  }
}

import 'package:get/get.dart';

import 'package:mobile/features/face_recognition/data/data.dart';
import 'package:mobile/features/face_recognition/domain/entities/entity.dart';
import 'package:mobile/features/face_recognition/domain/repositories/repository.dart';
import 'package:mobile/features/face_recognition/domain/usecases/usecase.dart';
import 'package:mobile/features/face_recognition/presentation/controllers/controller.dart';

class FaceRecognitionBinding implements Bindings {
  @override
  void dependencies() {
    // The config is passed as an argument to the route.
    // We retrieve it here to inject it into the controller.
    final FaceRecognitionConfig config = Get.arguments['config'];

    // Data Source
    Get.lazyPut<FaceRecognitionWebSocketDataSource>(
      () => FaceRecognitionWebSocketDataSourceImpl(config.websocketUrl),
    );

    // Repository
    Get.lazyPut<FaceRecognitionRepository>(
      () => FaceRecognitionRepositoryImpl(Get.find()),
    );

    // Use Cases
    Get.lazyPut(() => RecognizeFaceUseCase(Get.find()));
    Get.lazyPut(() => ConnectWebSocketUseCase(Get.find()));
    Get.lazyPut(() => DisconnectWebSocketUseCase(Get.find()));

    // Controller
    Get.lazyPut<RealTimeFaceRecognitionController>(
      () => RealTimeFaceRecognitionController(
        config: config,
        recognizeFaceUseCase: Get.find(),
        connectWebSocketUseCase: Get.find(),
        disconnectWebSocketUseCase: Get.find(),
      ),
    );
  }
}

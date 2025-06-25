import 'package:get/get.dart';

import 'package:mobile/core/config/session.dart';

class SplashController extends GetxController {
  final RxBool _isLoading = true.obs;
  bool get isLoading => _isLoading.value;

  Future<bool> isLoggedIn() async {
    _isLoading.value = true;

    try {
      final accessToken = await Session.getAccessToken();

      const minDelay = Duration(milliseconds: 1200);
      final stopwatch = Stopwatch()..start();

      await Future.delayed(const Duration(milliseconds: 100));

      final elapsed = stopwatch.elapsed;
      if (elapsed < minDelay) {
        await Future.delayed(minDelay - elapsed);
      }

      _isLoading.value = false;
      return accessToken != null;
    } catch (e) {
      _isLoading.value = false;
      return false;
    }
  }

  @override
  void onClose() {
    _isLoading.close();
    super.onClose();
  }
}

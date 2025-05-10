import 'package:get/get.dart';

class HomeController extends GetxController {
  String get greetingKey {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour < 11) {
      return 'features.home.appBar.greeting.morning';
    } else if (hour >= 11 && hour < 15) {
      return 'features.home.appBar.greeting.afternoon';
    } else if (hour >= 15 && hour < 18) {
      return 'features.home.appBar.greeting.evening';
    } else {
      return 'features.home.appBar.greeting.night';
    }
  }
}

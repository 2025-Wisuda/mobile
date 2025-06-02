import 'package:get/get.dart';

class HomeController extends GetxController {
  final morning = 'features.home.appBar.greeting.morning';
  final afternoon = 'features.home.appBar.greeting.afternoon';
  final evening = 'features.home.appBar.greeting.evening';
  final night = 'features.home.appBar.greeting.night';

  String get greetingKey {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour < 11) {
      return morning;
    } else if (hour >= 11 && hour < 15) {
      return afternoon;
    } else if (hour >= 15 && hour < 18) {
      return evening;
    } else {
      return night;
    }
  }
}

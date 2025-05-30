// Dart imports:
import 'dart:ui';

// Project imports:
import 'package:mobile/features/general/menu/data/models/model.dart';

abstract class MenuRepository {
  List<MenuModel> fetchMainMenuData({VoidCallback? onTap});
  List<MenuSectionModel> fetchProfileMenuData({VoidCallback? onTap});
}

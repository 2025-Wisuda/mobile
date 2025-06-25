import 'dart:ui';

import 'package:mobile/features/menu/data/models/menu_model.dart';

abstract class NavRepository {
  List<MenuModel> fetchMainNavMenuData({VoidCallback? onTap});
}

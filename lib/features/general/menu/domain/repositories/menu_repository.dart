import 'package:mobile/features/general/menu/data/models/model.dart';

abstract class MenuRepository {
  List<MenuModel> getMenuData();
  List<MenuSectionModel> getProfileMenuData();
}

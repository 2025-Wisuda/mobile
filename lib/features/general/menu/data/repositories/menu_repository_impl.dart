import 'package:mobile/features/general/menu/data/data.dart';
import 'package:mobile/features/general/menu/domain/repositories/repository.dart';

class MenuRepositoryImpl implements MenuRepository {
  final MainMenuLocalDatasource mainMenuLocalDatasource;
  final ProfileMenuLocalDatasource profileMenuLocalDatasource;

  MenuRepositoryImpl(
    MainMenuLocalDatasource find, {
    required this.mainMenuLocalDatasource,
    required this.profileMenuLocalDatasource,
  });

  @override
  List<MenuModel> getMenuData() {
    return mainMenuLocalDatasource.getMenuData();
  }

  @override
  List<MenuSectionModel> getProfileMenuData() {
    return profileMenuLocalDatasource.getProfileMenuData();
  }
}

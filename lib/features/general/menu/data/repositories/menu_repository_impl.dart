import 'package:mobile/features/general/menu/data/data.dart';
import 'package:mobile/features/general/menu/domain/repositories/repository.dart';

class MenuRepositoryImpl implements MenuRepository {
  final MainMenuLocalDatasource mainMenuLocalDatasource;

  MenuRepositoryImpl(
    MainMenuLocalDatasource find, {
    required this.mainMenuLocalDatasource,
  });

  @override
  List<MenuModel> getMenuData() {
    return mainMenuLocalDatasource.getMenuData();
  }
}

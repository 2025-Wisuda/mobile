import 'dart:ui';

import 'package:injectable/injectable.dart';

import 'package:mobile/features/menu/data/data.dart';
import 'package:mobile/features/menu/domain/repositories/repository.dart';

@Singleton(as: MenuRepository)
class MenuRepositoryImpl implements MenuRepository {
  final MainMenuLocalDatasource mainMenuLocalDatasource;
  final ProfileMenuLocalDatasource profileMenuLocalDatasource;

  MenuRepositoryImpl({
    required this.mainMenuLocalDatasource,
    required this.profileMenuLocalDatasource,
  });

  @override
  List<MenuModel> fetchMainMenuData({VoidCallback? onTap}) {
    return mainMenuLocalDatasource.fetchMainMenuData(onTap: onTap);
  }

  @override
  List<MenuSectionModel> fetchProfileMenuData({VoidCallback? onTap}) {
    return profileMenuLocalDatasource.fetchProfileMenuData(onTap: onTap);
  }
}

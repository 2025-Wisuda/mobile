import 'dart:ui';

import 'package:mobile/features/menu/data/data.dart';
import 'package:mobile/features/menu/domain/repositories/repository.dart';

class NavRepositoryImpl implements NavRepository {
  final MainNavMenuLocalDatasource mainNavMenuLocalDatasource;

  NavRepositoryImpl({required this.mainNavMenuLocalDatasource});

  @override
  List<MenuModel> fetchMainNavMenuData({VoidCallback? onTap}) {
    return mainNavMenuLocalDatasource.fetchMainNavMenuData(onTap: onTap);
  }
}

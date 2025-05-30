// Dart imports:
import 'dart:ui';

// Project imports:
import 'package:mobile/features/general/menu/data/data.dart';
import 'package:mobile/features/general/menu/domain/repositories/repository.dart';

class NavRepositoryImpl implements NavRepository {
  final MainNavMenuLocalDatasource mainNavMenuLocalDatasource;

  NavRepositoryImpl(
    MainNavMenuLocalDatasource find, {
    required this.mainNavMenuLocalDatasource,
  });

  @override
  List<MenuModel> fetchMainNavMenuData({VoidCallback? onTap}) {
    return mainNavMenuLocalDatasource.fetchMainNavMenuData(onTap: onTap);
  }
}

import 'package:mobile/features/general/menu/menu.dart';

class FetchMainNavMenuUsecase {
  final NavRepository navRepository;

  FetchMainNavMenuUsecase(this.navRepository);

  List<MenuModel> execute() {
    return navRepository.getNavData();
  }
}

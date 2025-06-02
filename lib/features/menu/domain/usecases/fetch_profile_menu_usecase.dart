import 'dart:ui';

import 'package:injectable/injectable.dart';

import 'package:mobile/features/menu/data/data.dart';
import 'package:mobile/features/menu/domain/repositories/repository.dart';

@injectable
class FetchProfileMenuUsecase {
  final MenuRepository menuRepository;

  FetchProfileMenuUsecase(this.menuRepository);

  List<MenuSectionModel> execute({VoidCallback? onTap}) {
    final result = menuRepository.fetchProfileMenuData(onTap: onTap);
    return result;
  }
}

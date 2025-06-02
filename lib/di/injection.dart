import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_post_processor.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  getIt.init();

  getIt<DependencyPostProcessor>();
}

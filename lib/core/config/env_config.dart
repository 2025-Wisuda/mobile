import 'package:envied/envied.dart';

part 'env_config.g.dart';

@Envied(path: '.env')
abstract class EnvConfig {
  @EnviedField(varName: 'apiKeyBackend')
  static const String apiKeyBackend = _EnvConfig.apiKeyBackend;
}

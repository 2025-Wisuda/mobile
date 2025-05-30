// Package imports:
import 'package:envied/envied.dart';

part 'api_key_env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'apiKeyBackend')
  static const String apiKeyBackend = _Env.apiKeyBackend;
}

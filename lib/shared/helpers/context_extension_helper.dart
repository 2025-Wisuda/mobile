import 'package:flutter/material.dart';

extension ContextExtensionHelper on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get text => theme.textTheme;
  ColorScheme get color => theme.colorScheme;
}

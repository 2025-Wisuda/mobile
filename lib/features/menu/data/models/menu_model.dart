import 'dart:ui';

part 'menu_section_model.dart';

class MenuModel {
  final String nameMenu;
  final dynamic routeName;
  final String iconMenu;
  final List<String> allowedGroup;
  final VoidCallback? onTap;

  MenuModel({
    required this.nameMenu,
    this.routeName,
    required this.iconMenu,
    required this.allowedGroup,
    this.onTap,
  });
}

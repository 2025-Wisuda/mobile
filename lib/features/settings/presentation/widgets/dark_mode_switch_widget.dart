import 'package:flutter/material.dart';

import 'package:mobile/core/config/config.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DarkModeSwitchWidget extends StatefulWidget {
  final Widget iconMenu;
  final String nameMenu;
  final Color? backgroundColor;

  const DarkModeSwitchWidget({
    super.key,
    required this.iconMenu,
    required this.nameMenu,
    this.backgroundColor,
  });

  @override
  State<DarkModeSwitchWidget> createState() => _DarkModeSwitchWidgetState();
}

class _DarkModeSwitchWidgetState extends State<DarkModeSwitchWidget> {
  bool _isDarkMode = false;
  bool _isLoading = true;

  /// UNDER DEVELOPMENT
  static const bool _isDarkModeEnabled = false;

  @override
  void initState() {
    super.initState();
    _loadThemeMode();
  }

  Future<void> _loadThemeMode() async {
    if (_isDarkModeEnabled) {
      final themeMode = await ThemeConfig.loadThemeMode();
      if (mounted) {
        setState(() {
          _isDarkMode = themeMode == ThemeMode.dark;
          _isLoading = false;
        });
      }
    } else {
      if (mounted) {
        setState(() {
          _isDarkMode = false;
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _toggleDarkMode() async {
    if (_isLoading) return;

    setState(() {
      _isDarkMode = !_isDarkMode;
    });

    try {
      final newThemeMode = _isDarkMode ? ThemeMode.dark : ThemeMode.light;
      await ThemeConfig.setThemeMode(newThemeMode);
    } catch (error) {
      if (mounted) {
        setState(() {
          _isDarkMode = !_isDarkMode;
        });
      }
    }
  }

  void _showUnderDevelopmentDialog(BuildContext context) {
    showCustomConfirmDialog(
      context: context,
      title: 'common'.message('underDevelopmentTitle'),
      message: 'common'.message('underDevelopmentMessage'),
      confirmText: '',
      onConfirm: () {},
      type: DialogType.info,
      icon: Icons.construction_outlined,
      showCloseButton: true,
      showActions: false,
    );
  }

  void _handleToggle() {
    if (_isDarkModeEnabled) {
      _toggleDarkMode();
    } else {
      _showUnderDevelopmentDialog(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomPrimaryToggleWidget(
      iconMenu: widget.iconMenu,
      nameMenu: widget.nameMenu,
      backgroundColor: widget.backgroundColor,
      currentValue: _isDarkMode ? 'Dark' : 'Light',
      currentIcon: _isDarkMode ? Icons.dark_mode : Icons.light_mode,
      onTap: _handleToggle,
      isLoading: _isLoading,
    );
  }
}

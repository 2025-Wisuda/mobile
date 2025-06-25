import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';

import 'package:mobile/core/config/config.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/state/custom_full_screen_loading_widget.dart';
import 'package:mobile/shared/widgets/toggle/custom_primary_toggle_widget.dart';

class LanguageSwitchWidget extends StatefulWidget {
  final Widget iconMenu;
  final String nameMenu;
  final Color? backgroundColor;

  const LanguageSwitchWidget({
    super.key,
    required this.iconMenu,
    required this.nameMenu,
    this.backgroundColor,
  });

  @override
  State<LanguageSwitchWidget> createState() => _LanguageSwitchWidgetState();
}

class _LanguageSwitchWidgetState extends State<LanguageSwitchWidget> {
  String _currentLanguage = 'ID';
  bool _isInitialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitialized) {
      _loadCurrentLanguage();
      _isInitialized = true;
    }
  }

  void _loadCurrentLanguage() {
    if (mounted) {
      final languageCode = context.locale.languageCode;
      setState(() {
        _currentLanguage = languageCode.toUpperCase();
      });
    }
  }

  void _showFullScreenLoading() {
    CustomFullScreenLoadingWidget.show(
      context,
      message: 'common'.message('changeLanguageLoading'),
      duration: const Duration(milliseconds: 1200),
    );
  }

  Future<void> _toggleLanguage() async {
    final currentLocale = context.locale;
    final newLocale = currentLocale.languageCode == 'id'
        ? const Locale('en', 'US')
        : const Locale('id', 'ID');

    _showFullScreenLoading();

    try {
      await Future.delayed(const Duration(milliseconds: 1200));
      if (!mounted) return;
      await context.setLocale(newLocale);
      await Get.updateLocale(newLocale);
      await LanguageConfig.saveLanguage(newLocale);

      if (mounted) {
        setState(() {
          _currentLanguage = newLocale.languageCode.toUpperCase();
        });
      }
    } finally {
      if (mounted && Navigator.canPop(context)) {
        Navigator.pop(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomPrimaryToggleWidget(
      iconMenu: widget.iconMenu,
      nameMenu: widget.nameMenu,
      backgroundColor: widget.backgroundColor,
      currentValue: _currentLanguage,
      currentIcon: Icons.language,
      onTap: _toggleLanguage,
    );
  }
}

// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/features/general/about_us/presentation/widgets/about_us_wrapper_widget.dart';
import 'package:mobile/shared/widgets/app_bar/custom_app_bar_widget.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(21),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomUserAppBarWidget(
              titleAppBar: i18n.tr('features.menu.aboutUs'),
            ),
          ),
        ),
      ),
      body: AboutUsWrapperWidget(),
    );
  }
}

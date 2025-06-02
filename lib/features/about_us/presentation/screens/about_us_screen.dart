import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' as i18n;

import 'package:mobile/features/about_us/presentation/widgets/widget.dart';
import 'package:mobile/shared/widgets/custom_app_bar_widget.dart';

@RoutePage()
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
            child: CustomAppBarWidget(
              titleAppBar: i18n.tr('features.menu.aboutUs'),
            ),
          ),
        ),
      ),
      body: AboutUsWrapperWidget(),
    );
  }
}

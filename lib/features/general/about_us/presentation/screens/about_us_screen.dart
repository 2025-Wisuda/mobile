import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/features/general/about_us/presentation/widgets/about_us_wrapper_widget.dart';
import 'package:mobile/shared/widgets/app_bar/custom_app_bar_widget.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomUserAppBarWidget(
              titleAppBar: 'features.menu.aboutUs'.tr(),
            ),
          ),
        ),
      ),
      body: AboutUsWrapperWidget(),
    );
  }
}

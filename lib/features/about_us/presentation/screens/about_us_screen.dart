import 'package:flutter/material.dart';

import 'package:mobile/features/about_us/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithBorder(
        title: 'aboutUs'.menu(),
      ),
      body: AboutUsWrapperWidget(),
    );
  }
}

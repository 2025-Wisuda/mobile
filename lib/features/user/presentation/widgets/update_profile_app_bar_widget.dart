import 'dart:io';

import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UpdateProfileAppBarWidget extends StatelessWidget {
  const UpdateProfileAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Platform-specific toolbar height
    final toolbarHeight = Platform.isIOS ? 120.0 : 76.0;

    return CustomSliverAppBarWithBorder(
      toolbarHeight: toolbarHeight,
      title: 'user'.message('updateProfile'),
    );
  }
}

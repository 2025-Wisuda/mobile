// Flutter imports:
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/core/constants/illustration_constant.dart';
import 'dialog.dart';

class CustomDialogErrorWidget extends StatelessWidget {
  final String? errorText;
  const CustomDialogErrorWidget({super.key, this.errorText});

  @override
  Widget build(BuildContext context) {
    return CustomAlertDialogWidget(
      imageDialog: IllustrationConstant.loginIllustration,
      titleText: i18n.tr('general.error.default'),
      descriptionText: errorText,
    );
  }
}

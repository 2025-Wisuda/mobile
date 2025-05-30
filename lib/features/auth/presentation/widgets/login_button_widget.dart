// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();

    return Obx(
      () => CustomButtonWidget(
        backgroundColor: WidgetStateProperty.all<Color>(
          authController.isFormValid.value
              ? context.primaryFixed
              : context.inversePrimary,
        ),
        onPressed:
            authController.isFormValid.value
                ? () => authController.login(context)
                : null,
        isFormValid: authController.isFormValid.value,
        height: 52,
        child:
            authController.state.value == SubmitStateEnum.loading
                ? customLoadingWidget
                : Text(
                  i18n.tr('features.auth.login.button.login'),
                  style: context
                      .bodyMediumW(600)
                      .copyWith(
                        color:
                            authController.isFormValid.value
                                ? context.surfaceContainer
                                : context.surface,
                      ),
                ),
      ),
    );
  }
}

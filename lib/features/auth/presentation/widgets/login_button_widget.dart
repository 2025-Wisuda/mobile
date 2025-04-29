import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile/core/enums/states/submit_state_enum.dart';
import 'package:mobile/features/auth/presentation/controllers/auth_controller.dart';
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
              ? Theme.of(context).colorScheme.primaryFixed
              : Theme.of(context).colorScheme.inversePrimary,
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
                  'features.auth.login.button.login'.tr(),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color:
                        authController.isFormValid.value
                            ? Theme.of(context).colorScheme.surfaceContainer
                            : Theme.of(context).colorScheme.surface,
                  ),
                ),
      ),
    );
  }
}

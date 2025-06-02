part of 'change_password_wrapper_widget.dart';

class ChangePasswordInstructionWidget extends StatefulWidget {
  const ChangePasswordInstructionWidget({super.key});

  @override
  State<ChangePasswordInstructionWidget> createState() =>
      _ChangePasswordInstructionWidgetState();
}

class _ChangePasswordInstructionWidgetState
    extends State<ChangePasswordInstructionWidget> {
  late final ChangePasswordController changePasswordController;
  late final TextEditingController passwordController;
  final RxString currentPassword = RxString('');

  @override
  void initState() {
    super.initState();
    changePasswordController = getIt<ChangePasswordController>();
    passwordController = changePasswordController.getController('newPassword');

    currentPassword.value = passwordController.text;

    passwordController.addListener(_onPasswordChanged);
  }

  void _onPasswordChanged() {
    currentPassword.value = passwordController.text;
  }

  @override
  void dispose() {
    passwordController.removeListener(_onPasswordChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final newPassword = currentPassword.value;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRequirementItem(
            context,
            'auth'.message('passwordMinLength'),
            newPassword.length >= 8,
          ),
          _buildRequirementItem(
            context,
            'auth'.message('passwordUppercase'),
            RegExp(r'[A-Z]').hasMatch(newPassword),
          ),
          _buildRequirementItem(
            context,
            'auth'.message('passwordLowercase'),
            RegExp(r'[a-z]').hasMatch(newPassword),
          ),
          _buildRequirementItem(
            context,
            'auth'.message('passwordNumber'),
            RegExp(r'[0-9]').hasMatch(newPassword),
          ),
          _buildRequirementItem(
            context,
            'auth'.message('passwordSpecialChar'),
            RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(newPassword),
          ),
        ],
      );
    });
  }

  Widget _buildRequirementItem(
    BuildContext context,
    String text,
    bool isValid,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Icon(
            isValid ? Icons.check_circle : Icons.radio_button_unchecked,
            size: 16,
            color: isValid ? context.primary : context.outline,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: context
                  .bodySmallW(400)
                  .copyWith(
                    color: isValid ? context.primary : context.onSurfaceVariant,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

part of 'login_wrapper_widget.dart';

class LoginAppBarWidget extends StatelessWidget {
  const LoginAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text(
            'auth'.message('welcomeTitle'),
            style: context.headlineMediumW(600),
          ),
          Text(
            'auth'.message('welcomeSubtitle'),
            style: context.bodyMediumW(600).copyWith(color: context.scrim),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: Image.asset(IllustrationConstant.loginIllustration),
          ),
        ],
      ),
    );
  }
}

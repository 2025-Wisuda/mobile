import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:mobile/features/user/presentation/widgets/widget.dart';

@RoutePage()
class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});
// TODO: TESTING
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: UpdateProfileWrapperWidget());
  }
}

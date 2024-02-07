import 'package:flutter/material.dart';
import 'widgets/custom_auth_app_bar.dart';
import 'widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const CustomAuthAppBar(),
          leadingWidth: 70,
          surfaceTintColor: Colors.white,
        ),
        body: const SafeArea(child: ForgetPasswordViewBody()));
  }
}

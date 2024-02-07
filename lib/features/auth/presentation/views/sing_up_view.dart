import 'package:flutter/material.dart';

import 'widgets/custom_auth_app_bar.dart';
import 'widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAuthAppBar(),
        leadingWidth: 70,
        surfaceTintColor: Colors.white,
      ),
      body: const SafeArea(child: SignUpViewBody()),
    );
  }
}

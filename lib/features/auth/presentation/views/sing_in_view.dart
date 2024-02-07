import 'package:flutter/material.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';
import 'widgets/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAuthAppBar(),
        leadingWidth: 70,
        surfaceTintColor: Colors.white,
      ),
      body: const SafeArea(child: SignInViewBody()),
    );
  }
}

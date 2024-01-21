import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/features/auth/presentation/views/verification_code_view.dart';

import '../../../../core/utils/app_string.dart';
import 'widgets/custom_auth_app_bar.dart';
import 'widgets/custom_gester_detector.dart';
import 'widgets/custom_text_field.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomAuthAppBar(),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppString.forgetPass,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(
                        height: 65,
                      ),
                      Image.asset(AppAssets.password),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                  const CustomTextField(
                    hint: 'Enter your email address',
                    labelText: AppString.email,
                  ),
                  const SizedBox(
                    height: 105,
                  ),
                  Text(
                    AppString.confirmMailQoute,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ),
            CustomGesterDetector(
              text: AppString.confirmEmail,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VerificationCodeView(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

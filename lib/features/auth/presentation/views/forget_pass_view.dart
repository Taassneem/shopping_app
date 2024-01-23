import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import '../../../../core/utils/app_string.dart';
import 'widgets/custom_auth_app_bar.dart';
import 'widgets/custom_gester_detector.dart';
import 'widgets/custom_text_field.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 20,
                right: 20,
              ),
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
                      SizedBox(
                        height: size * 0.08,
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
                  SizedBox(
                    height: size * 0.05,
                  ),
                  Text(
                    AppString.confirmMailQoute,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ),
          ),
          CustomGesterDetector(
            text: AppString.confirmEmail,
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.verificationCodeView,
              );
            },
          )
        ],
      ),
    );
  }
}

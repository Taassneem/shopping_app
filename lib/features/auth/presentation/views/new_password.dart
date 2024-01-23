import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import '../../../../core/utils/app_string.dart';
import 'widgets/custom_auth_app_bar.dart';
import 'widgets/custom_gester_detector.dart';
import 'widgets/custom_text_field.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomAuthAppBar(),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppString.newPass,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size * 0.1,
                  ),
                  const CustomTextField(
                    hint: 'Enter your password',
                    labelText: AppString.password,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    hint: 'Confirm your password',
                    labelText: AppString.confirmPass,
                  ),
                  SizedBox(
                    height: size * 0.375,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppString.confirmPassQoute,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          CustomGesterDetector(
            text: AppString.resetPass,
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.homeView,
              );
            },
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_text_button.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import 'widgets/custom_auth_app_bar.dart';
import 'widgets/custom_gester_detector.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/rich_text.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
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
                            Column(
                              children: [
                                Text(
                                  AppString.welcome,
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  AppString.welcomeSubTitle,
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size * 0.1,
                        ),
                        const CustomTextField(
                          hint: 'Enter your username',
                          labelText: AppString.username,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomTextField(
                          hint: 'Enter your password',
                          labelText: AppString.password,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            CustomTextButton(
                              text: '${AppString.forgetPass}?',
                              color: AppColors.google,
                              onPressed: () {
                                GoRouter.of(context)
                                    .push(AppRouter.forgetPassView);
                              },
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Text(
                              AppString.rememberMe,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: AppColors.black),
                            ),
                            const Spacer(),
                            CupertinoSwitch(
                              value: true,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const Richtext(
                          textAlign: TextAlign.center,
                          text: AppString.agree,
                          textButton: AppString.terms,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomGesterDetector(
              text: AppString.login,
              onTap: () {
                GoRouter.of(context).push(AppRouter.homeView);
              },
            )
          ],
        ),
      ),
    );
  }
}

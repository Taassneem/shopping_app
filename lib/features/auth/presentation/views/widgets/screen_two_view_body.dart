import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/generated/l10n.dart';

import '../../../../../core/utils/app_color.dart';
import '../sing_up_view.dart';
import 'custom_container.dart';
import 'custom_gester_detector.dart';
import 'custom_text_button.dart';

class ScreenTwoViewBody extends StatelessWidget {
  const ScreenTwoViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: size * 0.1,
                ),
                Text(
                  S.of(context).letsGetStarted,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: size * 0.27,
                ),
                const CustomContainer(
                  text: 'Facebook',
                  image: AppAssets.facebook,
                  color: AppColors.facebook,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomContainer(
                  text: 'Google',
                  image: AppAssets.google,
                  color: AppColors.google,
                ),
                SizedBox(
                  height: size * 0.2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).alreadyHaveAccount,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    CustomTextButton(
                      text: S.of(context).signIn,
                      color: AppColors.black,
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.signInView);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        CustomGesterDetector(
          text: S.of(context).creatAccuont,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUpView(),
              ),
            );
          },
        )
      ],
    );
  }
}

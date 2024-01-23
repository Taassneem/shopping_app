import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_string.dart';
import '../sing_in_view.dart';
import '../sing_up_view.dart';
import 'custom_auth_app_bar.dart';
import 'custom_container.dart';
import 'custom_gester_detector.dart';
import 'custom_text_button.dart';

class ScreenTwoViewBody extends StatelessWidget {
  const ScreenTwoViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  children: [
                    const CustomAuthAppBar(),
                    const SizedBox(
                      height: 17,
                    ),
                    Text(
                      AppString.getStart,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.27,
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
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppString.signIn,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        CustomTextButton(
                          text: 'Sign In',
                          color: AppColors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInView(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomGesterDetector(
          text: AppString.creatAccuont,
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

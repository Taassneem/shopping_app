import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_string.dart';
import 'widgets/custom_auth_app_bar.dart';
import 'widgets/custom_gester_detector.dart';
import 'widgets/custom_verification_code.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

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
                        AppString.verificationCode,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      SizedBox(
                        height: size * 0.04,
                      ),
                      Image.asset(AppAssets.password),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomVerificationCode(
                        number: '1',
                      ),
                      CustomVerificationCode(
                        number: '1',
                      ),
                      CustomVerificationCode(
                        number: '1',
                      ),
                      CustomVerificationCode(
                        number: '1',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '00:20',
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: AppColors.black,
                                ),
                      ),
                      Text(
                        AppString.verificationCode1,
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
            text: AppString.confirmCode,
            onTap: () {
              GoRouter.of(context).push(AppRouter.newPassView);
            },
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/database/cache/cache_helper.dart';
import 'package:shopping_app/core/utils/service_locator.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_text_button.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/core/utils/app_string.dart';

import 'custom_eleveted_button.dart';

class IntoItem extends StatelessWidget {
  const IntoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Column(
          children: [
            Text(
              AppString.introTitle,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: Text(
                AppString.introSubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIntroElevatedButton(
                  text: AppString.men,
                  color: AppColors.lightGrey,
                  horizontal: 20,
                  onPressed: () {
                    getIt
                        .get<CacheHelper>()
                        .saveData(key: 'OnBoardingVisited', value: true);
                    GoRouter.of(context).push(AppRouter.screenTwo);
                  },
                ),
                const SizedBox(
                  width: 30,
                ),
                CustomIntroElevatedButton(
                  text: AppString.women,
                  color: AppColors.primaryColor,
                  horizontal: 20,
                  textColor: AppColors.white,
                  onPressed: () {
                    getIt
                        .get<CacheHelper>()
                        .saveData(key: 'OnBoardingVisited', value: true);
                    GoRouter.of(context).push(AppRouter.screenTwo);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextButton(
              onPressed: () {
                getIt
                    .get<CacheHelper>()
                    .saveData(key: 'OnBoardingVisited', value: true);
                GoRouter.of(context).push(AppRouter.screenTwo);
              },
              text: AppString.skip,
            )
          ],
        ),
      ),
    );
  }
}

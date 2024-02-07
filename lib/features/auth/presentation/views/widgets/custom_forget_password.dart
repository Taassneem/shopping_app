import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/generated/l10n.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_router.dart';
import 'custom_text_button.dart';

class CustomForgetPassword extends StatelessWidget {
  const CustomForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Row(
      children: [
        const Spacer(),
        CustomTextButton(
          text: s.forgetPass,
          color: AppColors.google,
          onPressed: () {
            GoRouter.of(context).push(AppRouter.forgetPassView);
          },
        )
      ],
    );
  }
}

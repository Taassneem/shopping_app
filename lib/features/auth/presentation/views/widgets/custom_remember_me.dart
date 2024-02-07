import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/generated/l10n.dart';
import 'custom_cupertino_switch.dart';

class CustomRememberMe extends StatelessWidget {
  const CustomRememberMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          s.rememberMe,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: AppColors.black),
        ),
        const CustomCupertinoSwitch()
      ],
    );
  }
}

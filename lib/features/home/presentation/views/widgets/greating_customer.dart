import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/generated/l10n.dart';

import 'search_text_field.dart';

class GreatingCustomer extends StatelessWidget {
  const GreatingCustomer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.of(context).hello,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 5),
        Text(
          S.of(context).welcomeToLaza,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            const SizedBox(
              width: 290,
              child: SearchTextField(),
            ),
            const SizedBox(width: 10),
            Container(
              width: 33,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(AppAssets.voice),
            )
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/generated/l10n.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(s.welcome, style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(height: 5),
            Text(s.welcomeSubTitle,
                style: Theme.of(context).textTheme.displaySmall),
          ],
        ),
      ],
    );
  }
}

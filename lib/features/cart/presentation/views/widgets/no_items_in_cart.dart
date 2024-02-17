import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/generated/l10n.dart';

class NoItemsInCart extends StatelessWidget {
  const NoItemsInCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          S.of(context).noItemsInCart,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.baseView);
            },
            child: Text(
              S.of(context).continueShopping,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.white),
            ))
      ],
    ));
  }
}

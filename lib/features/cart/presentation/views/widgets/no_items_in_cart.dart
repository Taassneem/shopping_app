import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_router.dart';

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
          'No items in cart',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.homeView);
            },
            child: Text(
              'Continue Shopping',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.white),
            ))
      ],
    ));
  }
}

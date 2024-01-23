import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_router.dart';

class CustomCategoriesAppBar extends StatelessWidget {
  const CustomCategoriesAppBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.lightGrey,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.lightGrey,
          ),
          child: Image.asset(
            AppAssets.adidas,
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.lightGrey,
          ),
          child: IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.cartView);
            },
            icon: Image.asset(AppAssets.bag),
          ),
        ),
      ],
    );
  }
}

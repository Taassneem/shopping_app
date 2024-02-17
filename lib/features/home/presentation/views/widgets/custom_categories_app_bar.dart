import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/bloc/lang_cubit/global_cubit.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_router.dart';

import '../../../data/models/category_model.dart';

class CustomCategoriesAppBar extends StatelessWidget {
  const CustomCategoriesAppBar({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;

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
            color: BlocProvider.of<GlobalCubit>(context).darkTheme
                ? AppColors.darkGrey
                : AppColors.lightGrey,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.black,
            ),
          ),
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: BlocProvider.of<GlobalCubit>(context).darkTheme
                ? AppColors.darkGrey
                : AppColors.lightGrey,
          ),
          child: Center(
            child: Text(
              categoryModel.categories,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: AppColors.black),
            ),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: BlocProvider.of<GlobalCubit>(context).darkTheme
                ? AppColors.darkGrey
                : AppColors.lightGrey,
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

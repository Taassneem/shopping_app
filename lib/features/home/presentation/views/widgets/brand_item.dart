import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/bloc/global_cubit/global_cubit.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/features/home/data/models/category_model.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.categoriesView, extra: categoryModel);
      },
      child: Container(
        width: 115,
        height: 50,
        decoration: BoxDecoration(
          color: BlocProvider.of<GlobalCubit>(context).darkTheme
              ? AppColors.darkGrey
              : AppColors.lightGrey,
          borderRadius: BorderRadius.circular(10),
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
    );
  }
}

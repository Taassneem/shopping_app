import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';
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
      onTap: () {},
      child: Container(
        width: 115,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            categoryModel.categories [0],
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

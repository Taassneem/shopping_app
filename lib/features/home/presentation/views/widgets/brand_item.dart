import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/data/models/brand_model.dart';
import 'package:shopping_app/core/utils/app_color.dart';
class BrandItem extends StatelessWidget {
  const BrandItem({
    super.key,
    required this.brandModel, 
  });
  final BrandModel brandModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            brandModel.image,
            height: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            brandModel.text,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: AppColors.black),
          ),
        ],
      ),
    );
  }
}

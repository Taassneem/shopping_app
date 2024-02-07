import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/features/home/data/models/product_model/product_model.dart';
import 'package:shopping_app/generated/l10n.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        S.of(context).totalPrice,
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: AppColors.black,
            ),
      ),
      trailing: Text(
        r'$' '${productModel.price}',
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: AppColors.black,
            ),
      ),
    );
  }
}

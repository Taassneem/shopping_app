import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_string.dart';
import 'package:shopping_app/features/home/data/models/product_model/product_model.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key, required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Text(
          AppString.totalPrice,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: AppColors.black,
              ),
        ),
      ),
      subtitle: Text(
        'with VAT,SD',
        style: Theme.of(context).textTheme.displaySmall,
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

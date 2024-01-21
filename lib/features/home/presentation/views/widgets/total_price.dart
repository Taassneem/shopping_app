import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_string.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              AppString.totalPrice,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: AppColors.black,
                  ),
            ),
            Text(
              'with VAT,SD',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
        Text(
          r'$129',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: AppColors.black,
              ),
        ),
      ],
    );
  }
}

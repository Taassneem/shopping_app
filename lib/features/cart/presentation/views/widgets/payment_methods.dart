import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'payment_method.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PaymentMethod(
          image: AppAssets.pay3,
        ),
        PaymentMethod(
          image: AppAssets.pay2,
        ),
        PaymentMethod(
          image: AppAssets.pay,
        ),
      ],
    );
  }
}

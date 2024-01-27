import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
        ),
      ),
    );
  }
}

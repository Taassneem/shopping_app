import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppAssets.star,
          height: 14,
        ),
        Image.asset(
          AppAssets.star,
          height: 14,
        ),
        Image.asset(
          AppAssets.star,
          height: 14,
        ),
        Image.asset(
          AppAssets.star,
          height: 14,
        ),
        Image.asset(
          AppAssets.star1,
          height: 14,
        ),
      ],
    );
  }
}

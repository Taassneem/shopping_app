import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_color.dart';

import 'rating_stars.dart';

class ReviewInfo extends StatelessWidget {
  const ReviewInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              child: Image.asset(
                AppAssets.review,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ronald Richards',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      AppAssets.clock,
                      height: 16,
                      color: AppColors.darkGrey,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '13 Sep, 2020',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                )
              ],
            ),
            
            const SizedBox(
              width: 95,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      '4.8  ',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: AppColors.black,
                          ),
                    ),
                    Text(
                      'Rating',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
                const RatingStars()
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 20,
              ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/rating_stars.dart';
import 'package:shopping_app/features/review/presentation/views/add_review_view.dart';
import 'package:shopping_app/features/review/presentation/views/widgets/custom_app_bar_review.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_string.dart';

import 'review_list_view.dart';

class ReviewViewBody extends StatelessWidget {
  const ReviewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const CustomAppBar(
            text: 'Reviews',
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '256 Reviews',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Row(
                    children: [
                      Text(
                        '4.8  ',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const RatingStars()
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddReviewView(),
                    ),
                  );
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: AppColors.orange),
                child: Row(
                  children: [
                    Image.asset(
                      AppAssets.edit,
                      height: 15,
                      color: AppColors.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      AppString.addReviews,
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ),
            ],
          ),
          const Expanded(
            child: ReviewListView(),
          ),
        ],
      ),
    );
  }
}

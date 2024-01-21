import 'package:flutter/material.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_gester_detector.dart';
import 'package:shopping_app/features/review/presentation/views/widgets/custom_app_bar_review.dart';
import 'package:shopping_app/core/utils/app_string.dart';

import 'add_text_filed.dart';

class AddReviewViewBody extends StatelessWidget {
  const AddReviewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(
                text: AppString.addReviews,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Name',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              const AddTextField(
                hintText: 'Type your name',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'How was your experience ?',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              const AddTextField(
                hintText: 'Describe your experience?',
                maxLines: 9,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Star',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0.0',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    '5.0',
                    style: Theme.of(context).textTheme.titleSmall,
                  )
                ],
              )
            ],
          ),
        ),
        const Spacer(),
        const CustomGesterDetector(
          text: 'Submit Review',
        ),
      ],
    );
  }
}

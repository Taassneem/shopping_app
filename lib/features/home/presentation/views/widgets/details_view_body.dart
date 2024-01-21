import 'package:flutter/material.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_gester_detector.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_text_button.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/rich_text.dart';
import 'package:shopping_app/features/review/presentation/views/review_view.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_string.dart';

import 'review_info.dart';
import 'size_card.dart';
import 'stack_with_image.dart';
import 'total_price.dart';

class CardDetailsBody extends StatelessWidget {
  const CardDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const StackWithImage(),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Men\'s Printed Pullover Hoodie',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: Text(
                        'Price',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nike Club Fleece',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: AppColors.black,
                              ),
                    ),
                    Text(
                      r'$120',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: AppColors.black,
                              ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 21,
                ),
                Row(
                  children: [
                    Image.asset(
                      AppAssets.model2,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(AppAssets.model3),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(AppAssets.model4),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      AppAssets.model5,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Size',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: AppColors.black,
                              ),
                    ),
                    Text(
                      'Size Guide',
                      style: Theme.of(context).textTheme.displayMedium,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizeCard(
                      size: 'S',
                    ),
                    SizeCard(size: 'M'),
                    SizeCard(size: 'L'),
                    SizeCard(size: 'XL'),
                    SizeCard(size: '2XL'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  AppString.description,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: AppColors.black,
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Richtext(
                    text:
                        'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with',
                    textButton: ' Read More..'),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppString.reviews,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: AppColors.black,
                              ),
                    ),
                    CustomTextButton(
                      text: AppString.viewAll,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReviewView(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReviewInfo(),
                const SizedBox(
                  height: 20,
                ),
                const TotalPrice(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomGesterDetector(text: 'Add to cart')
        ],
      ),
    );
  }
}

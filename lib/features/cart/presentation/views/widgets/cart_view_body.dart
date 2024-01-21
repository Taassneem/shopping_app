import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_gester_detector.dart';
import 'package:shopping_app/features/review/presentation/views/widgets/custom_app_bar_review.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/core/utils/app_string.dart';

import 'card_add_in_cart.dart';
import 'cost.dart';
import 'navigate_row.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(
                    text: 'Cart',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const CardAddInCart(),
                  const SizedBox(
                    height: 20,
                  ),
                  AddressInfo(
                    text: AppString.deliveryAddress,
                    title: 'Chhatak, Sunamgonj 12/8AB',
                    image: AppAssets.map,
                    subTitle: 'Sylhet',
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.addressView);
                    },
                  ),
                  AddressInfo(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.paymentView);
                    },
                    title: 'Visa Classic',
                    image: AppAssets.visa,
                    text: 'Payment Method',
                    subTitle: '**** 7690',
                  ),
                  Text(
                    'Order Info',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Cost(
                    text: 'Subtotal',
                    price: r'$110',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Cost(
                    text: 'Shipping cost',
                    price: r'$10',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Cost(
                    text: 'Total',
                    price: r'$120',
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            CustomGesterDetector(
              text: 'checkout',
              onTap: () {
                GoRouter.of(context).push(AppRouter.orederConfirmedView);
              },
            ),
          ],
        ),
      ),
    );
  }
}

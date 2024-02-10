import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_gester_detector.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/generated/l10n.dart';

import 'card_list_view.dart';
import 'cost.dart';
import 'navigate_row.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: SizedBox(height: 25),
          ),
          const CardListView(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  AddressInfo(
                    text: s.deliveryAddress,
                    title: 'Chhatak, Sunamgonj 12/8AB',
                    image: AppAssets.map,
                    subTitle: 'Sylhet',
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.addressView);
                    },
                  ),
                  AddressInfo(
                    title: 'Visa Classic',
                    image: AppAssets.visa,
                    text: s.paymentMethod,
                    subTitle: '**** 7690',
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.paymentView);
                    },
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    s.orderInfo,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 15),
                  Cost(
                    text: s.subtotal,
                    price: r'$110',
                  ),
                  const SizedBox(height: 10),
                  Cost(
                    text: s.shippingCost,
                    price: r'$10',
                  ),
                  const SizedBox(height: 10),
                  Cost(
                    text: s.total,
                    price: r'$120',
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CustomGesterDetector(
              text: s.checkout,
              onTap: () {
                GoRouter.of(context).push(AppRouter.orederConfirmedView);
              },
            ),
          )
        ],
      ),
    );
  }
}

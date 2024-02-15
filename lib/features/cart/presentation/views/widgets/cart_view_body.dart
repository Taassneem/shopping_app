import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_gester_detector.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/features/cart/presentation/manager/add_to_card_cubit/add_to_card_cubit.dart';
import 'package:shopping_app/generated/l10n.dart';

import 'card_list_view.dart';
import 'navigate_row.dart';
import 'no_items_in_cart.dart';
import 'order_information.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    return BlocBuilder<AddToCardCubit, AddToCardState>(
      builder: (context, state) {
        if (state is CartProductSuccess) {
          return state.cards.isEmpty
              ? const NoItemsInCart()
              : SafeArea(
                  child: CustomScrollView(
                    slivers: <Widget>[
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 25),
                      ),
                      const CardListView(),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AddressInfo(
                                text: s.deliveryAddress,
                                title: 'Chhatak, Sunamgonj 12/8AB',
                                image: AppAssets.map,
                                subTitle: 'Sylhet',
                                onPressed: () {
                                  GoRouter.of(context)
                                      .push(AppRouter.addressView);
                                },
                              ),
                              AddressInfo(
                                title: 'Visa Classic',
                                image: AppAssets.visa,
                                text: s.paymentMethod,
                                subTitle: '**** 7690',
                                onPressed: () {
                                  GoRouter.of(context)
                                      .push(AppRouter.paymentView);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: OrderInformation(),
                      ),
                      SliverToBoxAdapter(
                        child: CustomGesterDetector(
                          text: s.checkout,
                          onTap: () {
                            GoRouter.of(context)
                                .push(AppRouter.orederConfirmedView);
                          },
                        ),
                      )
                    ],
                  ),
                );
        } else {
          return const Center(child: Text('Unexpected error '));
        }
      },
    );
  }
}

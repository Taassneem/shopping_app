import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/card_grid_view.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';

import 'custom_wishlist_app_bar.dart';
import 'sort_items.dart';

class WishlistViewBody extends StatelessWidget {
  const WishlistViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomWishlistAppBar(
                  secondOnPressed: () {
                    GoRouter.of(context).push(AppRouter.cartView);
                  },
                  secondIcon: AppAssets.bag,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SortItems(),
              ],
            ),
          ),
          const CardGridView()
        ],
      ),
    );
  }
}

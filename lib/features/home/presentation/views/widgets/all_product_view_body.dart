import 'package:flutter/material.dart';
import 'package:shopping_app/features/review/presentation/views/widgets/custom_app_bar_review.dart';
import 'package:shopping_app/generated/l10n.dart';

import 'card_grid_view.dart';

class AllProductViewBody extends StatelessWidget {
  const AllProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomAppBar(text: S.of(context).allProduct),
              ],
            ),
          ),
          const CardGridView(),
        ],
      ),
    );
  }
}

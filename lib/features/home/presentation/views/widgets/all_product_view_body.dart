import 'package:flutter/material.dart';
import 'package:shopping_app/features/review/presentation/views/widgets/custom_app_bar_review.dart';

import 'card_grid_view.dart';

class AllProductViewBody extends StatelessWidget {
  const AllProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomAppBar(
                  text: 'All Product',
                ),
              ],
            ),
          ),
          CardGridView(),
        ],
      ),
    );
  }
}

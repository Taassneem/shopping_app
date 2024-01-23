import 'package:flutter/cupertino.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/categories_grid_view.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/custom_categories_app_bar.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomCategoriesAppBar(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          CategoriesGridView(),
        ],
      ),
    );
  }
}

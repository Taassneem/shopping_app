import 'package:flutter/cupertino.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/categories_grid_view.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/custom_categories_app_bar.dart';

import '../../../data/models/category_model.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomCategoriesAppBar(
                  categoryModel: categoryModel,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const CategoriesGridView(),
        ],
      ),
    );
  }
}

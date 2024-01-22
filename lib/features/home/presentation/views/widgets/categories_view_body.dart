import 'package:flutter/cupertino.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/categories_grid_view.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/custom_categories_app_bar.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: CustomCategoriesAppBar(),
        ),
        CategoriesGridView(),
      ],
    );
  }
}

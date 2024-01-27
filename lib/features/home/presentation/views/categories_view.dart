import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/home/data/models/category_model.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/categories_view_body.dart';
import '../manager/fetch_categories_cubit/fetch_categories_cubit.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  void initState() {
    BlocProvider.of<FetchCategoriesCubit>(context)
        .fetchCategoryProducts(category: widget.categoryModel.categories);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CategoriesViewBody(),
      ),
    );
  }
}

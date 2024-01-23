import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/categories_view_body.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CategoriesViewBody(),
      ),
    );
  }
}

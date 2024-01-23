import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/utils/widget/custom_error_message.dart';
import 'package:shopping_app/features/home/presentation/manager/fetch_categories_cubit/fetch_categories_cubit.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/brand_item.dart';

class BrandListView extends StatelessWidget {
  const BrandListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchCategoriesCubit, FetchCategoriesState>(
      builder: (context, state) {
        if (state is FetchCategoriesSuccess) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: BrandItem(
                      categoryModel: state.categories[index],
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is FetchCategoriesFailure) {
          log(state.errorMessage);
          return SliverToBoxAdapter(
            child: CustomErrorMessage(
              errorMessage: state.errorMessage,
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

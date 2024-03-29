import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/utils/widget/custom_error_message.dart';
import 'package:shopping_app/features/home/presentation/manager/fetch_products_cubit/fetch_products_cubit.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/custom_card.dart';

class CardGridView extends StatelessWidget {
  const CardGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchProductsCubit, FetchProductsState>(
      buildWhen: (previous, current) =>
          current is! FetchAllProductsLoading &&
          current is! FetchProductsFailure,
      builder: (context, state) {
        if (state is FetchProductsSuccess) {
          return SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 15,
              childAspectRatio: .7,
            ),
            itemCount: state.product.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomCard(
                productModel: state.product[index],
              );
            },
          );
        } else if (state is FetchProductsFailure) {
          log(state.errorMessage);
          return SliverToBoxAdapter(
            child: CustomErrorMessage(
              errorMessage: state.errorMessage,
            ),
          );
        } else if (state is FetchProductsLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          );
        }
      },
    );
  }
}

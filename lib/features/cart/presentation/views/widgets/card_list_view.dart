import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/utils/widget/custom_error_message.dart';
import 'package:shopping_app/core/utils/widget/custom_loading_indicator.dart';
import 'package:shopping_app/features/cart/presentation/manager/add_to_card_cubit/add_to_card_cubit.dart';

import 'card_add_in_cart.dart';
import 'no_items_in_cart.dart';

class CardListView extends StatelessWidget {
  const CardListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddToCardCubit, AddToCardState>(
      builder: (context, state) {
        if (state is CartProductSuccess) {
          return state.cards.isEmpty
              ? const SliverToBoxAdapter(
                  child: NoItemsInCart(),
                )
              : SliverList.builder(
                  itemCount: state.cards.length,
                  itemBuilder: (context, index) {
                    return CardAddInCart(
                      cardModel: state.cards[index],
                    );
                  });
        } else if (state is CartProductFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorMessage(errorMessage: state.errorMessage),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}

// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/features/cart/data/model/card_model.dart';
import 'package:shopping_app/features/cart/presentation/manager/add_to_card_cubit/add_to_card_cubit.dart';

class AddOrDeleteItem extends StatelessWidget {
  const AddOrDeleteItem({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    AddToCardCubit item = BlocProvider.of<AddToCardCubit>(context);
    return BlocConsumer<AddToCardCubit, AddToCardState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Row(
          children: [
            IconButton(
              onPressed: () {
                item.quantityDecrement(cardModel);
                item.fetchAllCards();
              },
              icon: const Icon(
                Icons.keyboard_arrow_down_outlined,
              ),
            ),
            Text(
              cardModel.quantity.toString(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            IconButton(
              onPressed: () {
                item.quantityIncrement(cardModel);
                item.fetchAllCards();
              },
              icon: const Icon(
                Icons.keyboard_arrow_up_outlined,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .18,
            ),
            IconButton(
              onPressed: () {
                cardModel.delete();
                item.fetchAllCards();
              },
              icon: Image.asset(
                AppAssets.delete,
                height: 20,
                width: 20,
              ),
            ),
          ],
        );
      },
    );
  }
}

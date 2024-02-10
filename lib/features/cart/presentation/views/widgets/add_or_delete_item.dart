// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/features/cart/data/model/card_model.dart';
import 'package:shopping_app/features/cart/presentation/manager/add_to_card_cubit/add_to_card_cubit.dart';

class AddOrDeleteItem extends StatefulWidget {
  const AddOrDeleteItem({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;

  @override
  State<AddOrDeleteItem> createState() => _AddOrDeleteItemState();
}

class _AddOrDeleteItemState extends State<AddOrDeleteItem> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            if (quantity > 1) {
              setState(() {
                quantity--;
              });
            }
          },
          icon: const Icon(
            Icons.keyboard_arrow_down_outlined,
          ),
        ),
        Text(
          quantity.toString(),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        IconButton(
          onPressed: () {
            {
              setState(() {
                quantity++;
              });
            }
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
            widget.cardModel.delete();
            BlocProvider.of<AddToCardCubit>(context).fetchAllCards();
          },
          icon: Image.asset(
            AppAssets.delete,
            height: 20,
            width: 20,
          ),
        ),
      ],
    );
  }
}

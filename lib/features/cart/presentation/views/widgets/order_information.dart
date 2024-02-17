import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/cart/presentation/manager/add_to_card_cubit/add_to_card_cubit.dart';
import 'package:shopping_app/generated/l10n.dart';

import 'cost.dart';

class OrderInformation extends StatelessWidget {
  const OrderInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<AddToCardCubit, AddToCardState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                s.orderInfo,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 15),
              Cost(
                text: s.subtotal,
                price:
                    '\$${BlocProvider.of<AddToCardCubit>(context).totalPriceForAllItems().round()}',
              ),
              const SizedBox(height: 10),
              Cost(
                text: s.shippingCost,
                price: r'$10',
              ),
              const SizedBox(height: 10),
              Cost(
                text: s.total,
                price:
                    '\$${BlocProvider.of<AddToCardCubit>(context).totalPriceForAllItems().round() + 10}',
              ),
            ],
          );
        },
      ),
    );
  }
}

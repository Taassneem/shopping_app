import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shopping_app/core/utils/widget/custom_loading_indicator.dart';
import 'package:shopping_app/features/cart/data/model/card_model.dart';
import 'package:shopping_app/features/cart/presentation/manager/add_to_card_cubit/add_to_card_cubit.dart';

import 'add_or_delete_item.dart';

class CardAddInCart extends StatelessWidget {
  const CardAddInCart({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 8.0, bottom: 16, right: isArabic() ? 16 : 0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3 / 4,
              child: CachedNetworkImage(
                imageUrl: cardModel.image,
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error_outline,
                ),
                placeholder: (context, url) => const CustomLoadingIndicator(),
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    cardModel.title,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '\$${BlocProvider.of<AddToCardCubit>(context).totalPrice(cardModel).round()}',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                AddOrDeleteItem(
                  cardModel: cardModel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}

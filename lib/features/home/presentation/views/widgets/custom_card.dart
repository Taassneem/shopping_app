import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/widget/custom_loading_indicator.dart';
import 'package:shopping_app/features/home/data/models/product_model/product_model.dart';
import 'package:shopping_app/features/home/presentation/views/card_details_view.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CardDetailsView(
                productModel: productModel,
              );
            },
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 4 / 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: productModel.image ?? '',
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error_outline,
                ),
                placeholder: (context, url) => const CustomLoadingIndicator(),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            productModel.title ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 5),
          Text(
            r'$' '${productModel.price}',
            style: Theme.of(context).textTheme.displaySmall,
          )
        ],
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/widget/custom_loading_indicator.dart';
import '../../../data/models/product_model/product_model.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AspectRatio(
        aspectRatio: 1.3,
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
    );
  }
}

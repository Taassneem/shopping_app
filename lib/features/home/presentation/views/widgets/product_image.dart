import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import '../../../data/models/product_model/product_model.dart';
import 'custom_card_app_bar.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        color: Colors.black12,
        image: DecorationImage(
          image: NetworkImage(productModel.image ?? ''),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomCardAppBar(
          secondIcon: AppAssets.bag,
          firstIcon: AppAssets.backArrow,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/details_view_body.dart';

import '../../data/models/product_model/product_model.dart';

class CardDetailsView extends StatelessWidget {
  const CardDetailsView({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CardDetailsBody(
        productModel: productModel,
      ),
    );
  }
}

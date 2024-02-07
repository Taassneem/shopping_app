import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/details_view_body.dart';

import '../../data/models/product_model/product_model.dart';

class CardDetailsView extends StatelessWidget {
  const CardDetailsView({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          // flexibleSpace: ClipRect(
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          //     child: Container(
          //       color: Colors.transparent,
          //     ),
          //   ),
          // ),
          leading: const CustomAuthAppBar(),
          leadingWidth: 70,
          actions: [
            CustomHomeAppBar(
                icon: AppAssets.bag,
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.cartView);
                })
          ],
        ),
        body: CardDetailsBody(productModel: productModel));
  }
}

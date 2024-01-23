import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/all_product_view_body.dart';

class AllProductView extends StatelessWidget {
  const AllProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AllProductViewBody(),
      ),
    );
  }
}

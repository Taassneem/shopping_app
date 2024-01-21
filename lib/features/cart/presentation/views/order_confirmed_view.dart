import 'package:flutter/material.dart';
import 'package:shopping_app/features/cart/presentation/views/widgets/order_confirmed_view_body.dart';

class OrderConfirmedView extends StatelessWidget {
  const OrderConfirmedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OrderConfirmedViewBody(),
      ),
    );
  }
}

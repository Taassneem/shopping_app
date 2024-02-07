import 'package:flutter/material.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';
import 'package:shopping_app/features/cart/presentation/views/widgets/order_confirmed_view_body.dart';

class OrderConfirmedView extends StatelessWidget {
  const OrderConfirmedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAuthAppBar(),
        leadingWidth: 65,
      ),
      body: const SafeArea(child: OrderConfirmedViewBody()),
    );
  }
}

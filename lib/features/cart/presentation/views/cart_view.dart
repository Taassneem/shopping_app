import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';
import 'package:shopping_app/features/cart/presentation/manager/add_to_card_cubit/add_to_card_cubit.dart';
import 'package:shopping_app/features/cart/presentation/views/widgets/cart_view_body.dart';
import 'package:shopping_app/generated/l10n.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  void initState() {
    BlocProvider.of<AddToCardCubit>(context).fetchAllCards();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const CustomAuthAppBar(),
          leadingWidth: 70,
          title: Text(S.of(context).cart),
          centerTitle: true,
        ),
        body: const CartViewBody());
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/details_view_body.dart';

class CardDetailsView extends StatelessWidget {
  const CardDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CardDetailsBody(),
    );
  }
}

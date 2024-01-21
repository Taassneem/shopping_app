import 'package:flutter/material.dart';

import 'widgets/add_new_card_view_body.dart';

class AddNewCardView extends StatelessWidget {
  const AddNewCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AddNewCardViewBody(),
      ),
    );
  }
}

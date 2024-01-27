import 'package:flutter/material.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_gester_detector.dart';
import 'package:shopping_app/features/review/presentation/views/widgets/custom_app_bar_review.dart';
import 'card_info.dart';
import 'payment_methods.dart';

class AddNewCardViewBody extends StatelessWidget {
  const AddNewCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                CustomAppBar(
                  text: 'Add New Card',
                ),
                SizedBox(
                  height: 25,
                ),
                PaymentMethods(),
                SizedBox(
                  height: 30,
                ),
                CardInfo()
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .24,
        ),
        const CustomGesterDetector(
          text: 'Add Card',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_gester_detector.dart';
import 'package:shopping_app/features/cart/presentation/views/widgets/cusrom_cupertino_switch.dart';
import 'package:shopping_app/features/review/presentation/views/widgets/custom_app_bar_review.dart';
import 'add_new_card_button.dart';
import 'card_info.dart';
import 'visa_list_view.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              top: 15,
              right: 15,
              left: 15,
            ),
            child: Column(
              children: [
                CustomAppBar(
                  text: 'Payment',
                ),
                SizedBox(
                  height: 10,
                ),
                VisaListView(),
                SizedBox(
                  height: 10,
                ),
                AddNewCardButton(),
                SizedBox(
                  height: 15,
                ),
                CardInfo(),
                SizedBox(
                  height: 10,
                ),
                CustomCupertinoSwitch(
                  text: 'Save Card Info',
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomGesterDetector(
            text: 'Save Payment',
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_gester_detector.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';

class OrderConfirmedViewBody extends StatelessWidget {
  const OrderConfirmedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CustomAuthAppBar(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.088,
              ),
              Image.asset(
                AppAssets.orderConfirmed,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'Order confirmed',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Your order has been confirmed, we will send you confirmation email shortly.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ],
          ),
        ),
        CustomGesterDetector(
          text: 'Continue Shopping',
          onTap: () {
            GoRouter.of(context).push(AppRouter.homeView);
          },
        ),
      ],
    );
  }
}

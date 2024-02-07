import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_gester_detector.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/generated/l10n.dart';

class OrderConfirmedViewBody extends StatelessWidget {
  const OrderConfirmedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    var s = S.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: size * 0.08),
              Image.asset(
                AppAssets.orderConfirmed,
              ),
              SizedBox(height: size * 0.05),
              Text(
                s.orderConfirmed,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 10),
              Text(
                s.orderConfirmedSubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(height: size * 0.206),
            ],
          ),
        ),
        CustomGesterDetector(
          text: s.continueShopping,
          onTap: () {
            GoRouter.of(context).push(AppRouter.homeView);
          },
        ),
      ],
    );
  }
}

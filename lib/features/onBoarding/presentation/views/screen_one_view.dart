import 'package:flutter/material.dart';
import 'package:shopping_app/features/onBoarding/presentation/views/widgets/screen_one_view_body.dart';
import '../../../../core/utils/app_color.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: ScreenOneViewBody(),
    );
  }
}

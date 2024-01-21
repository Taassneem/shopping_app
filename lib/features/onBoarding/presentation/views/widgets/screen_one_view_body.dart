import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'intro_item.dart';

class ScreenOneViewBody extends StatelessWidget {
  const ScreenOneViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.backgroung,
          ),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16,
        ),
        child: IntoItem(),
      ),
    );
  }
}

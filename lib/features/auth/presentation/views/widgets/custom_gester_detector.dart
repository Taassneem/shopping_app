import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class CustomGesterDetector extends StatelessWidget {
  const CustomGesterDetector({super.key, this.onTap, required this.text});
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75,
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Center(
            child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.white,
              ),
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class SizeCard extends StatelessWidget {
  const SizeCard({
    super.key,
    required this.size,
  });
  final String size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.lightGrey,
      ),
      child: Center(
        child: Text(
          size,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: AppColors.black),
        ),
      ),
    );
  }
}

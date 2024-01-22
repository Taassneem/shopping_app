import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_string.dart';

class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({
    super.key,
    required this.viewName,
  });
  final String viewName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          viewName,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: AppColors.black,
              ),
        ),
        Text(
          AppString.viewAll,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ],
    );
  }
}

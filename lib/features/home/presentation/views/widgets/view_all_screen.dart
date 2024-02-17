import 'package:flutter/material.dart';
import 'package:shopping_app/generated/l10n.dart';

class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({
    super.key,
    required this.viewName,
    this.onPressed,
  });
  final String viewName;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          viewName,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            S.of(context).viewAll,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ],
    );
  }
}

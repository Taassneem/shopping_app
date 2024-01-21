import 'package:flutter/material.dart';

class Cost extends StatelessWidget {
  const Cost({
    super.key,
    required this.text,
    required this.price,
  });
  final String text;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          price,
          style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}

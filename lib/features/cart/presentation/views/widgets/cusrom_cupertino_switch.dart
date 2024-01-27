import 'package:flutter/material.dart';

import '../../../../auth/presentation/views/widgets/custom_cupertino_switch.dart';

class CustomButtonToSaveData extends StatelessWidget {
  const CustomButtonToSaveData({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const CustomCupertinoSwitch()
      ],
    );
  }
}

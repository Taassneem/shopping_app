import 'package:flutter/material.dart';

import 'text_with_text_field.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextWithTextField(
          textFieldName: 'Card Owner',
          hintText: 'Tasneem',
        ),
        const SizedBox(
          height: 15,
        ),
        const TextWithTextField(
          textFieldName: 'Card Number',
          hintText: '5478   4567  8743   4751',
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .42,
              child: const TextWithTextField(
                textFieldName: 'Exp',
                hintText: '12/28',
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .42,
              child: const TextWithTextField(
                textFieldName: 'CVV',
                hintText: '148',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

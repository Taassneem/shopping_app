import 'package:flutter/material.dart';
import 'package:shopping_app/features/review/presentation/views/widgets/add_text_filed.dart';

class TextWithTextField extends StatelessWidget {
  const TextWithTextField({
    super.key,
    required this.textFieldName,
    required this.hintText,
  });
  final String textFieldName;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textFieldName,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 10,
        ),
        AddTextField(
          hintText: hintText,
        ),
      ],
    );
  }
}

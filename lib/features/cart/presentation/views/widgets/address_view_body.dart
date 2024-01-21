import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_gester_detector.dart';
import 'package:shopping_app/features/review/presentation/views/widgets/custom_app_bar_review.dart';

import 'cusrom_cupertino_switch.dart';
import 'text_with_text_field.dart';

class AddressViewBody extends StatelessWidget {
  const AddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CustomAppBar(
                text: 'Address',
              ),
              const SizedBox(
                height: 25,
              ),
              const TextWithTextField(
                textFieldName: 'Name',
                hintText: 'Tasneem',
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .42,
                    child: const TextWithTextField(
                      textFieldName: 'Country',
                      hintText: 'Egypt',
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .42,
                    child: const TextWithTextField(
                      textFieldName: 'City',
                      hintText: 'Cairo',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const TextWithTextField(
                textFieldName: 'Phone Number',
                hintText: '012345678',
              ),
              const SizedBox(
                height: 15,
              ),
              const TextWithTextField(
                textFieldName: 'Address',
                hintText: 'Nasr City, Cairo',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomCupertinoSwitch(
                text: 'Save as primary address',
              ),
            ],
          ),
        ),
        const Spacer(),
        CustomGesterDetector(
          text: 'Save Address',
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';

import 'custom_card_app_bar.dart';

class StackWithImage extends StatelessWidget {
  const StackWithImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: const BoxDecoration(
            color: Colors.black12,
            image: DecorationImage(
              image: AssetImage(AppAssets.model),
              fit: BoxFit.fill,
            ),
          ),
          child: Image.asset(AppAssets.logoNike),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomCardAppBar(
              secondIcon: AppAssets.bag,
              firstIcon: AppAssets.backArrow,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';

class CardAddInCart extends StatelessWidget {
  const CardAddInCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.181,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 4 / 5,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppAssets.model),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Men\'s Tie-Dye T-Shirt Nike Sportswear',
                  maxLines: 2,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                r'$45 (-$4.00 Tax)',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                    ),
                  ),
                  Text(
                    '1',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_up_outlined,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .18,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      AppAssets.delete,
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

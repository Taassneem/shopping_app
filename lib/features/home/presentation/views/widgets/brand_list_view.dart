import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_string.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/brand_item.dart';

import '../../../data/models/brand_model.dart';

class BrandListView extends StatelessWidget {
  const BrandListView({super.key});
  final List<BrandModel> brandList = const [
    BrandModel(
      image: AppAssets.adidas,
      text: AppString.adidas,
    ),
    BrandModel(
      image: AppAssets.nike,
      text: AppString.nike,
    ),
    BrandModel(
      image: AppAssets.fila,
      text: AppString.fila,
    ),
    BrandModel(
      image: AppAssets.fila,
      text: AppString.fila,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brandList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: BrandItem(brandModel: brandList[index]),
          );
        },
      ),
    );
  }
}

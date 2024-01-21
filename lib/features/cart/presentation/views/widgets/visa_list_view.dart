import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';

class VisaListView extends StatelessWidget {
  const VisaListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: AspectRatio(
              aspectRatio: 7.5 / 5,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AppAssets.visaCard2,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

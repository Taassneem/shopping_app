import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/card_grid_view.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/core/utils/app_string.dart';
import 'custom_home_app_bar.dart';
import 'brand_list_view.dart';
import 'search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HomeViewBody({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                CustomHomeAppBar(
                  scaffoldKey: scaffoldKey,
                  firstIcon: AppAssets.menu,
                  secondIcon: AppAssets.bag,
                  secondOnPressed: () {
                    GoRouter.of(context).push(AppRouter.cartView);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  AppString.hello,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  AppString.welcomeToLaza,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 290,
                      child: SearchTextField(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(AppAssets.voice),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppString.chooseBrand,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: AppColors.black),
                    ),
                    Text(
                      AppString.viewAll,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const BrandListView(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppString.newArrivals,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: AppColors.black),
                    ),
                    Text(
                      AppString.viewAll,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: CardGridView()),
        ],
      ),
    );
  }
}

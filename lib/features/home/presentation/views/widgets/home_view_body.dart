import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/card_grid_view.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/generated/l10n.dart';
import 'brand_list_view.dart';
import 'custom_home_app_bar.dart';
import 'greating_customer.dart';
import 'view_all_screen.dart';

class HomeViewBody extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HomeViewBody({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        leading: CustomHomeAppBar(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: AppAssets.menu,
        ),
        leadingWidth: 90,
        actions: [
          CustomHomeAppBar(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.cartView);
            },
            icon: AppAssets.bag,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const GreatingCustomer(),
                  ViewAllScreen(
                    viewName: S.of(context).chooseBrand,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            const BrandListView(),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  ViewAllScreen(
                    viewName: S.of(context).newArrivals,
                    onPressed: () {
                      GoRouter.of(context).push(
                        AppRouter.allProductView,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            const CardGridView(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/widget/custom_error_message.dart';
import 'package:shopping_app/features/home/presentation/manager/fetch_products_cubit/fetch_products_cubit.dart';
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
        child: RefreshIndicator(
          // enablePullUp: true,
          // controller: context.read<FetchProductsCubit>().refresherController,
          onRefresh: refresh,
          // onLoading: () {
          //     final bool result = context
          //       .read<FetchProductsCubit>()
          //       .fetchProducts() as bool;
          //   if (result) {
          //     context
          //         .read<FetchProductsCubit>()
          //         .refresherController
          //         .loadComplete();
          //   } else {
          //     context
          //         .read<FetchProductsCubit>()
          //         .refresherController
          //         .loadFailed();
          //   }
          // },
          child: CustomScrollView(
            controller: context.read<FetchProductsCubit>().scrollController,
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
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
      ),
      bottomNavigationBar: SizedBox(
        height: 40,
        child: BlocBuilder<FetchProductsCubit, FetchProductsState>(
          builder: (context, state) {
            if (state is FetchAllProductsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is FetchAllProductsFailure) {
              return CustomErrorMessage(
                errorMessage: state.errorMessage,
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }

  Future<void> refresh() {
    return Future.delayed(const Duration(seconds: 2));
  }
}

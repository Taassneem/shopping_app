import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/bloc/cubit/global_cubit.dart';
import 'package:shopping_app/core/database/cache/cache_helper.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/core/utils/service_locator.dart';
import 'package:shopping_app/generated/l10n.dart';
import 'package:intl/intl.dart';

import 'profile_info.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tasneem Radwan',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'tasnemradwan87@gmail.com',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ProfileListTile(
            leading: Image.asset(AppAssets.bag),
            title: s.order,
            onTap: () {
              GoRouter.of(context).push(AppRouter.cartView);
            },
          ),
          ProfileListTile(
            title: s.myCards,
            leading: Image.asset(AppAssets.wallet),
            onTap: () {
              GoRouter.of(context).push(AppRouter.paymentView);
            },
          ),
          ProfileListTile(
            title: s.setting,
            leading: const Icon(
              Icons.settings,
            ),
          ),
          ProfileListTile(
            title: s.about,
            leading: const Icon(
              Icons.error_outline,
            ),
          ),
          ProfileListTile(
            title: s.help,
            leading: const Icon(
              Icons.help_outline,
            ),
          ),
          BlocBuilder<GlobalCubit, GlobalState>(
            builder: (context, state) {
              return ProfileListTile(
                title: isArabic() ? 'الانجليزيه' : 'Arabic',
                onTap: () {
                  getIt
                      .get<CacheHelper>()
                      .saveData(key: 'IsArabic', value: true);
                  BlocProvider.of<GlobalCubit>(context).changeLang();
                },
                leading: Image.asset(
                  AppAssets.arabic,
                  height: 28,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/bloc/lang_cubit/global_cubit.dart';
import 'package:shopping_app/core/services/local_notification_service.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/generated/l10n.dart';
import 'package:intl/intl.dart';

import 'profile_info.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    return SingleChildScrollView(
      child: Padding(
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
              leading: Image.asset(
                AppAssets.bag,
                color: BlocProvider.of<GlobalCubit>(context).darkTheme
                    ? Colors.white
                    : Colors.black,
              ),
              title: s.order,
              onTap: () {
                GoRouter.of(context).push(AppRouter.cartView);
              },
            ),
            ProfileListTile(
              title: s.myCards,
              leading: Image.asset(
                AppAssets.wallet,
                color: BlocProvider.of<GlobalCubit>(context).darkTheme
                    ? Colors.white
                    : Colors.black,
              ),
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
            ProfileListTile(
              title: s.notifications,
              leading: const Icon(Icons.notifications),
              onTap: () {
                LocalNotificationService.showSimpleNotification();
              },
              onPressed: () {
                LocalNotificationService.cancelNotification(0);
              },
            ),
            // ProfileListTile(
            //   title: 'Repeated Notifications',
            //   leading: const Icon(Icons.notifications),
            //   onTap: () {
            //     LocalNotificationService.showRepeatedNotification();
            //   },
            //   onPressed: () {
            //     LocalNotificationService.cancelNotification(1);
            //   },
            // ),
            // ProfileListTile(
            //   title: 'Schduled Notifications',
            //   leading: const Icon(Icons.notifications),
            //   onTap: () {
            //     LocalNotificationService.showSchduledNotification();
            //   },
            //   onPressed: () {
            //     LocalNotificationService.cancelNotification(2);
            //   },
            // ),
            BlocBuilder<GlobalCubit, GlobalState>(
              builder: (context, state) {
                return ProfileListTile(
                  title: isArabic() ? 'الانجليزيه' : 'Arabic',
                  onTap: () {
                    BlocProvider.of<GlobalCubit>(context).changeLang();
                  },
                  leading: Image.asset(
                    AppAssets.arabic,
                    height: 28,
                    color: BlocProvider.of<GlobalCubit>(context).darkTheme
                        ? Colors.white
                        : Colors.black,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}

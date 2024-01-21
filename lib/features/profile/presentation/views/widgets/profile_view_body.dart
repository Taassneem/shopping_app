import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';

import 'profile_info.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              CircleAvatar(
                child: Image.asset(
                  AppAssets.review,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ronald Richards',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'ronaldrichard@gmail.com',
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
            title: 'Order',
            onTap: () {
              GoRouter.of(context).push(AppRouter.cartView);
            },
          ),
          ProfileListTile(
            title: 'My Cards',
            leading: Image.asset(AppAssets.wallet),
            onTap: () {
              GoRouter.of(context).push(AppRouter.paymentView);
            },
          ),
          const ProfileListTile(
            title: 'Setting',
            leading: Icon(
              Icons.settings,
            ),
          ),
          const ProfileListTile(
            title: 'About',
            leading: Icon(
              Icons.error_outline,
            ),
          ),
          const ProfileListTile(
            title: 'Help',
            leading: Icon(
              Icons.help_outline,
            ),
          ),
        ],
      ),
    );
  }
}

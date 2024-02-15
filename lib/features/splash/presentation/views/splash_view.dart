// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/database/cache/cache_helper.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/core/services/service_locator.dart';

import '../../../../core/utils/app_color.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool OnBoardingVisited =
        getIt.get<CacheHelper>().getData(key: 'OnBoardingVisited') ?? false;
    if (OnBoardingVisited == true) {
      FirebaseAuth.instance.currentUser == null
          ? Navigate(path: AppRouter.screenTwo)
          : FirebaseAuth.instance.currentUser!.emailVerified == true
              ? Navigate(path: AppRouter.baseView)
              : Navigate(path: AppRouter.signInView);
    } else {
      Navigate(path: AppRouter.screenOne);
    }

    super.initState();
  }

  void Navigate({required String path}) {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Image.asset(AppAssets.logo),
      ),
    );
  }
}

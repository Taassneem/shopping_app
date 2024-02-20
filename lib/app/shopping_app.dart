import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shopping_app/core/bloc/global_cubit/global_cubit.dart';
import 'package:shopping_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:shopping_app/features/cart/presentation/manager/add_to_card_cubit/add_to_card_cubit.dart';
import 'package:shopping_app/generated/l10n.dart';
import '../features/home/data/repos/home_repo_impl.dart';
import '../features/home/presentation/manager/fetch_categories_cubit/fetch_categories_cubit.dart';
import '../features/home/presentation/manager/fetch_products_cubit/fetch_products_cubit.dart';
import '../theme/theme.dart';
import '../core/utils/app_router.dart';
import '../core/services/service_locator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GlobalCubit()
            ..getThemeData()
            ..getLang(),
        ),
        BlocProvider(
          create: (context) => FetchProductsCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchProducts(),
        ),
        BlocProvider(
          create: (context) => FetchCategoriesCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchCategories(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => AddToCardCubit(),
        )
      ],
      child: BlocBuilder<GlobalCubit, GlobalState>(
        builder: (context, state) {
          return MaterialApp.router(
            locale: Locale(BlocProvider.of<GlobalCubit>(context).langCode, ''),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            routerConfig: AppRouter.router,
            theme: getThemeData(),
            darkTheme: getDarkThemeData(),
            themeMode: BlocProvider.of<GlobalCubit>(context).darkTheme
                ? ThemeMode.dark
                : ThemeMode.light,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}

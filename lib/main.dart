import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/core/utils/service_locator.dart';
import 'package:shopping_app/features/home/data/repos/home_repo_impl.dart';
import 'package:shopping_app/features/home/presentation/manager/fetch_categories_cubit/fetch_categories_cubit.dart';
import 'package:shopping_app/features/home/presentation/manager/fetch_products_cubit/fetch_products_cubit.dart';
import 'package:shopping_app/simple_bloc_observer.dart';
import 'firebase_options.dart';
import 'theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();
  Bloc.observer = SimpleBLocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
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
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: getThemeData(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

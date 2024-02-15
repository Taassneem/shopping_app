import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/services/service_locator.dart';
import 'package:shopping_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:shopping_app/features/auth/presentation/views/forget_pass_view.dart';
import 'package:shopping_app/features/auth/presentation/views/screen_two.dart';
import 'package:shopping_app/features/auth/presentation/views/sing_in_view.dart';
import 'package:shopping_app/features/auth/presentation/views/sing_up_view.dart';
import 'package:shopping_app/features/base/base.dart';
import 'package:shopping_app/features/cart/presentation/views/add_new_card_view.dart';
import 'package:shopping_app/features/cart/presentation/views/address_view.dart';
import 'package:shopping_app/features/cart/presentation/views/cart_view.dart';
import 'package:shopping_app/features/cart/presentation/views/order_confirmed_view.dart';
import 'package:shopping_app/features/cart/presentation/views/payment_view.dart';

import '../../features/home/data/models/category_model.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import '../../features/home/presentation/manager/fetch_categories_cubit/fetch_categories_cubit.dart';
import '../../features/home/presentation/views/all_products_view.dart';
import '../../features/home/presentation/views/categories_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/onBoarding/presentation/views/screen_one_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';
import '../../features/review/presentation/views/add_review_view.dart';
import '../../features/review/presentation/views/review_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String screenOne = '/screenOne';
  static const String screenTwo = '/screenTwo';
  static const String signInView = '/signInView';
  static const String signUpView = '/signUpView';
  static const String forgetPassView = '/forgetPassView';
  static const String baseView = '/baseView';
  static const String homeView = '/homeView';
  static const String detailsCartView = '/detailsCartView';
  static const String addReviewView = '/addReviewView';
  static const String reviewView = '/reviewView';
  static const String cartView = '/cartView';
  static const String cartDetailsView = '/cartDetailsView';
  static const String paymentView = '/paymentView';
  static const String addressView = '/addressView';
  static const String addNewCard = '/addNewCard';
  static const String orederConfirmedView = '/orederConfirmedView';
  static const String profileView = '/profiledView';
  static const String categoriesView = '/categoriesView';
  static const String allProductView = '/allProductView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: screenOne,
        builder: (context, state) => const ScreenOne(),
      ),
      GoRoute(
        path: screenTwo,
        builder: (context, state) => const ScreenTwo(),
      ),
      GoRoute(
        path: signInView,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: forgetPassView,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthCubit(),
          child: const ForgetPasswordView(),
        ),
      ),
      GoRoute(
        path: cartView,
        builder: (context, state) => const CartView(),
      ),
      GoRoute(
        path: profileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: baseView,
        builder: (context, state) => const BaseView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: reviewView,
        builder: (context, state) => const ReviewView(),
      ),
      GoRoute(
        path: addReviewView,
        builder: (context, state) => const AddReviewView(),
      ),
      GoRoute(
        path: addressView,
        builder: (context, state) => const AddressView(),
      ),
      GoRoute(
        path: paymentView,
        builder: (context, state) => const PaymentView(),
      ),
      GoRoute(
        path: addNewCard,
        builder: (context, state) => const AddNewCardView(),
      ),
      GoRoute(
        path: orederConfirmedView,
        builder: (context, state) => const OrderConfirmedView(),
      ),
      GoRoute(
        path: allProductView,
        builder: (context, state) => const AllProductView(),
      ),
      GoRoute(
        path: categoriesView,
        builder: (context, state) => BlocProvider(
          create: (context) => FetchCategoriesCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: CategoriesView(
            categoryModel: state.extra as CategoryModel,
          ),
        ),
      ),
    ],
  );
}

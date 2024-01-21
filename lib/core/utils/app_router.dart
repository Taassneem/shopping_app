import 'package:go_router/go_router.dart';
import 'package:shopping_app/features/auth/presentation/views/forget_pass_view.dart';
import 'package:shopping_app/features/auth/presentation/views/new_password.dart';
import 'package:shopping_app/features/auth/presentation/views/screen_two.dart';
import 'package:shopping_app/features/auth/presentation/views/sing_in_view.dart';
import 'package:shopping_app/features/auth/presentation/views/sing_up_view.dart';
import 'package:shopping_app/features/auth/presentation/views/verification_code_view.dart';
import 'package:shopping_app/features/cart/presentation/views/add_new_card_view.dart';
import 'package:shopping_app/features/cart/presentation/views/address_view.dart';
import 'package:shopping_app/features/cart/presentation/views/cart_view.dart';
import 'package:shopping_app/features/cart/presentation/views/order_confirmed_view.dart';
import 'package:shopping_app/features/cart/presentation/views/payment_view.dart';
import 'package:shopping_app/features/home/presentation/views/card_details_view.dart';
import 'package:shopping_app/features/home/presentation/views/home_view.dart';
import 'package:shopping_app/features/onBoarding/presentation/views/screen_one_view.dart';
import 'package:shopping_app/features/review/presentation/views/add_review_view.dart';
import 'package:shopping_app/features/review/presentation/views/review_view.dart';
import 'package:shopping_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String screenOne = '/screenOne';
  static const String screenTwo = '/screenTwo';
  static const String signInView = '/signInView';
  static const String signUpView = '/signUpView';
  static const String forgetPassView = '/forgetPassView';
  static const String newPassView = '/newPassView';
  static const String verificationCodeView = '/verificationCodeView';
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
        path: verificationCodeView,
        builder: (context, state) => const VerificationCodeView(),
      ),
      GoRoute(
        path: newPassView,
        builder: (context, state) => const NewPasswordView(),
      ),
      GoRoute(
        path: forgetPassView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: cartView,
        builder: (context, state) => const CartView(),
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
        path: cartDetailsView,
        builder: (context, state) => const CardDetailsView(),
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
    ],
  );
}

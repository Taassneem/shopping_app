// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Look Good, Feel Good`
  String get introTitle {
    return Intl.message(
      'Look Good, Feel Good',
      name: 'introTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create your individual & unique style and look amazing everyday.`
  String get introSubTitle {
    return Intl.message(
      'Create your individual & unique style and look amazing everyday.',
      name: 'introSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get men {
    return Intl.message(
      'Male',
      name: 'men',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get women {
    return Intl.message(
      'Female',
      name: 'women',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Let's Get Started`
  String get letsGetStarted {
    return Intl.message(
      'Let`s Get Started',
      name: 'letsGetStarted',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get creatAccuont {
    return Intl.message(
      'Create an Account',
      name: 'creatAccuont',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get email {
    return Intl.message(
      'Email Address',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message(
      'Remember me',
      name: 'rememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your data to continue`
  String get welcomeSubTitle {
    return Intl.message(
      'Please enter your data to continue',
      name: 'welcomeSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get forgetPass {
    return Intl.message(
      'Forgot password',
      name: 'forgetPass',
      desc: '',
      args: [],
    );
  }

  /// `By connecting your account confirm that you agree with our`
  String get agree {
    return Intl.message(
      'By connecting your account confirm that you agree with our',
      name: 'agree',
      desc: '',
      args: [],
    );
  }

  /// `Term and Condition`
  String get terms {
    return Intl.message(
      'Term and Condition',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Please write your email to receive a confirmation code to set a new password.`
  String get confirmMailQoute {
    return Intl.message(
      'Please write your email to receive a confirmation code to set a new password.',
      name: 'confirmMailQoute',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Mail`
  String get confirmEmail {
    return Intl.message(
      'Confirm Mail',
      name: 'confirmEmail',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Code`
  String get confirmCode {
    return Intl.message(
      'Confirm Code',
      name: 'confirmCode',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get verificationCode {
    return Intl.message(
      'Verification Code',
      name: 'verificationCode',
      desc: '',
      args: [],
    );
  }

  /// ` resend confirmation code.`
  String get verificationCode1 {
    return Intl.message(
      ' resend confirmation code.',
      name: 'verificationCode1',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPass {
    return Intl.message(
      'New Password',
      name: 'newPass',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPass {
    return Intl.message(
      'Reset Password',
      name: 'resetPass',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPass {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPass',
      desc: '',
      args: [],
    );
  }

  /// `Please write your new password.`
  String get confirmPassQoute {
    return Intl.message(
      'Please write your new password.',
      name: 'confirmPassQoute',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Laza.`
  String get welcomeToLaza {
    return Intl.message(
      'Welcome to Laza.',
      name: 'welcomeToLaza',
      desc: '',
      args: [],
    );
  }

  /// `Choose Brand`
  String get chooseBrand {
    return Intl.message(
      'Choose Brand',
      name: 'chooseBrand',
      desc: '',
      args: [],
    );
  }

  /// `Adidas`
  String get adidas {
    return Intl.message(
      'Adidas',
      name: 'adidas',
      desc: '',
      args: [],
    );
  }

  /// `Nike`
  String get nike {
    return Intl.message(
      'Nike',
      name: 'nike',
      desc: '',
      args: [],
    );
  }

  /// `Fila`
  String get fila {
    return Intl.message(
      'Fila',
      name: 'fila',
      desc: '',
      args: [],
    );
  }

  /// `Jewelery`
  String get jewelery {
    return Intl.message(
      'Jewelery',
      name: 'jewelery',
      desc: '',
      args: [],
    );
  }

  /// `Electronics`
  String get electronics {
    return Intl.message(
      'Electronics',
      name: 'electronics',
      desc: '',
      args: [],
    );
  }

  /// `Men`
  String get menClothing {
    return Intl.message(
      'Men',
      name: 'menClothing',
      desc: '',
      args: [],
    );
  }

  /// `Women`
  String get womenClothing {
    return Intl.message(
      'Women',
      name: 'womenClothing',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewAll {
    return Intl.message(
      'View All',
      name: 'viewAll',
      desc: '',
      args: [],
    );
  }

  /// `New Arrivals`
  String get newArrivals {
    return Intl.message(
      'New Arrivals',
      name: 'newArrivals',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Add Review`
  String get addReviews {
    return Intl.message(
      'Add Review',
      name: 'addReviews',
      desc: '',
      args: [],
    );
  }

  /// `Total Price`
  String get totalPrice {
    return Intl.message(
      'Total Price',
      name: 'totalPrice',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Address`
  String get deliveryAddress {
    return Intl.message(
      'Delivery Address',
      name: 'deliveryAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please verify your account`
  String get pleaseVerifyYourAccount {
    return Intl.message(
      'Please verify your account',
      name: 'pleaseVerifyYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address`
  String get enterEmail {
    return Intl.message(
      'Enter your email address',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enterPassword {
    return Intl.message(
      'Enter your password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your username`
  String get enterUsername {
    return Intl.message(
      'Enter your username',
      name: 'enterUsername',
      desc: '',
      args: [],
    );
  }

  /// `Successfully, please verify your account`
  String get successfully {
    return Intl.message(
      'Successfully, please verify your account',
      name: 'successfully',
      desc: '',
      args: [],
    );
  }

  /// `Check Your Email to reset your password`
  String get checkYourEmail {
    return Intl.message(
      'Check Your Email to reset your password',
      name: 'checkYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get size {
    return Intl.message(
      'Size',
      name: 'size',
      desc: '',
      args: [],
    );
  }

  /// `Read More`
  String get readMore {
    return Intl.message(
      'Read More',
      name: 'readMore',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get addToCart {
    return Intl.message(
      'Add to cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `All Product`
  String get allProduct {
    return Intl.message(
      'All Product',
      name: 'allProduct',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get order {
    return Intl.message(
      'Order',
      name: 'order',
      desc: '',
      args: [],
    );
  }

  /// `My Cards`
  String get myCards {
    return Intl.message(
      'My Cards',
      name: 'myCards',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Order Confirmed`
  String get orderConfirmed {
    return Intl.message(
      'Order Confirmed',
      name: 'orderConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been confirmed, we will send you confirmation email shortly.`
  String get orderConfirmedSubTitle {
    return Intl.message(
      'Your order has been confirmed, we will send you confirmation email shortly.',
      name: 'orderConfirmedSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Continue Shopping`
  String get continueShopping {
    return Intl.message(
      'Continue Shopping',
      name: 'continueShopping',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Order Info`
  String get orderInfo {
    return Intl.message(
      'Order Info',
      name: 'orderInfo',
      desc: '',
      args: [],
    );
  }

  /// `SubTotal`
  String get subtotal {
    return Intl.message(
      'SubTotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Cost`
  String get shippingCost {
    return Intl.message(
      'Shipping Cost',
      name: 'shippingCost',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `No items in cart`
  String get noItemsInCart {
    return Intl.message(
      'No items in cart',
      name: 'noItemsInCart',
      desc: '',
      args: [],
    );
  }

  /// `Account Information`
  String get accountInformation {
    return Intl.message(
      'Account Information',
      name: 'accountInformation',
      desc: '',
      args: [],
    );
  }

  /// `Wish List`
  String get wishList {
    return Intl.message(
      'Wish List',
      name: 'wishList',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Add To Cart Successfully`
  String get addToCartSuccessfully {
    return Intl.message(
      'Add To Cart Successfully',
      name: 'addToCartSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Item already exists in cart`
  String get itemAlreadyExistsInCart {
    return Intl.message(
      'Item already exists in cart',
      name: 'itemAlreadyExistsInCart',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

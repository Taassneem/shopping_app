import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shopping_app/core/database/cache/cache_helper.dart';
import 'package:shopping_app/core/function/check_state_changes.dart';
import 'package:shopping_app/core/utils/service_locator.dart';
import 'package:shopping_app/core/bloc/simple_bloc_observer.dart';
import 'package:shopping_app/features/cart/data/model/card_model.dart';
import 'app/shopping_app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();
  checkStateChanges();
  await getIt<CacheHelper>().init();
  Bloc.observer = SimpleBLocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(CardModelAdapter());
  await Hive.openBox<CardModel>('card_box');
  runApp(const MyApp());
}

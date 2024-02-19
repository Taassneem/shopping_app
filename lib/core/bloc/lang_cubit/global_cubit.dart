import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/database/cache/cache_helper.dart';
import 'package:shopping_app/core/services/service_locator.dart';

part 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  bool darkTheme = false;
  void changeTheme() async {
    emit(InitialTheme());
    darkTheme = !darkTheme;
    await getIt<CacheHelper>().saveData(key: 'isDarkTheme', value: darkTheme);
    emit(ChangeTheme());
  }

  void getThemeData() async {
    darkTheme = await getIt<CacheHelper>().getData(key: 'isDarkTheme');

    emit(GetChangeTheme());
  }

  bool isArabic = false;
  String langCode = "en";

  void changeLang() async {
    emit(ChangeLanguageLoading());

    isArabic = !isArabic;

    langCode = isArabic ? 'en' : 'ar';
    await getIt<CacheHelper>()
        .saveData(key: 'isArabic', value: isArabic ? 'ar' : 'en');
    print('Language code saved: $langCode');

    emit(ChangeLanguageSuccess());
  }

  void getLang() async {
    String? langCodeFromCache =
        await getIt<CacheHelper>().getData(key: 'isArabic');
    print('Language code retrieved from cache: $langCodeFromCache');
    isArabic = langCodeFromCache == 'en';
    langCode = isArabic ? 'ar' : 'en';
    emit(GetChangeLang());
  }
}


import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  bool isArabic = false;

  String langCode = "en";



  void changeLang() {
    emit(ChangeLanguageLoading());

    isArabic = !isArabic;

    langCode = isArabic ? 'en' : 'ar';


    emit(ChangeLanguageSuccess());
  }
}
  // void _loadLanguagePreference() async {
  //   isArabic = await getIt.get<CacheHelper>().getData(key: 'isArabic') ?? false;

  //   langCode = isArabic ? 'ar' : 'en';

  //   log('Loaded language preference: isArabic=$isArabic, langCode=$langCode');
  //   emit(ChangeLanguageSuccess());
  // }

  // void _saveLanguagePreference(bool isArabic) async {
  //   await getIt.get<CacheHelper>().saveData(key: 'isArabic', value: isArabic);

  //   log('Saved language preference: isArabic=$isArabic');
  // }
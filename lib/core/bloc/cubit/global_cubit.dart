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


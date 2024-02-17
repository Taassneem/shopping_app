import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'change_theme_state.dart';

class ChangeThemeCubit extends Cubit<ChangeThemeState> {
  ChangeThemeCubit() : super(ChangeThemeInitial());
  bool darkTheme = false;
  void changeTheme() {
    darkTheme = !darkTheme;
    emit(ChangeTheme());
  }
}

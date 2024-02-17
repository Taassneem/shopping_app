part of 'change_theme_cubit.dart';

sealed class ChangeThemeState extends Equatable {
  const ChangeThemeState();

  @override
  List<Object> get props => [];
}

final class ChangeThemeInitial extends ChangeThemeState {}

final class ChangeTheme extends ChangeThemeState {}

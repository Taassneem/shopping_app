part of 'auth_cubit.dart';

sealed class AuthState extends Equatable {
  const AuthState();
  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFailureState extends AuthState {
  final String errorMessage;

  const SignUpFailureState({required this.errorMessage});
}

final class SignInLoadingState extends AuthState {}

final class SignInSuccessState extends AuthState {}

final class SignInFailureState extends AuthState {
  final String errorMessage;

  const SignInFailureState({required this.errorMessage});
}

final class ResetPasswordLoadingState extends AuthState {}

final class ResetPasswordSuccessState extends AuthState {}

final class ResetPasswordFailureState extends AuthState {
  final String errorMessage;

  const ResetPasswordFailureState({required this.errorMessage});
}

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? userName;
  String? emailAddress;
  String? password;

  GlobalKey<FormState> signUpKey = GlobalKey();
  GlobalKey<FormState> signInKey = GlobalKey();
  GlobalKey<FormState> resetPasswordKey = GlobalKey();

  // signUpWithEmailAndPassword() async {
  //   emit(SignUpLoadingState());
  //   try {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: emailAddress!, password: password!);

  //     verifyAccpunt();

  //     emit(SignUpSuccessState());
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       emit(const SignUpFailureState(
  //           errorMessage: 'The password provided is too weak.'));
  //     } else if (e.code == 'email-already-in-use') {
  //       emit(const SignUpFailureState(
  //           errorMessage: 'The account already exists for that email.'));
  //     } else {
  //       emit(SignUpFailureState(errorMessage: e.code));
  //     }
  //   } catch (e) {
  //     emit(SignUpFailureState(errorMessage: e.toString()));
  //   }
  // }

  // verifyAccpunt() async {
  //   await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  // }

  // signInWithEmailAndPassword() async {
  //   try {
  //   emit(SignInLoadingState());
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: emailAddress!, password: password!);

  //     emit(SignInSuccessState());
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       emit(const SignInFailureState(
  //           errorMessage: 'No user found for that email.'));
  //     } else if (e.code == 'wrong-password') {
  //       emit(const SignInFailureState(
  //           errorMessage: 'Wrong password provided for that user.'));
  //     } else {
  //       const SignInFailureState(
  //           errorMessage: 'Check your email address and password');
  //     }
  //   } catch (e) {
  //     emit(SignInFailureState(errorMessage: e.toString()));
  //   }
  // }

  // resetPaswordWithEmail() async {
  //   emit(ResetPasswordLoadingState());
  //   try {
  //     await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
  //     emit(ResetPasswordSuccessState());
  //   } catch (e) {
  //     emit(ResetPasswordFailureState(errorMessage: e.toString()));
  //   }
  // }
}

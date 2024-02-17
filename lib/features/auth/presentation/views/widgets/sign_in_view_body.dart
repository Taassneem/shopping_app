import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:shopping_app/generated/l10n.dart';

import '../../../../../core/function/custom_toast.dart';
import '../../../../../core/utils/app_router.dart';
import 'custom_forget_password.dart';
import 'custom_gester_detector.dart';
import 'custom_header.dart';
import 'custom_remember_me.dart';
import 'custom_text_field_pass.dart';
import 'custom_text_form_field.dart';
import 'rich_text.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    var size = MediaQuery.of(context).size.height;
    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is SignInSuccessState) {
        FirebaseAuth.instance.currentUser!.emailVerified
            ? GoRouter.of(context).pushReplacement(AppRouter.baseView)
            : showToast(s.pleaseVerifyYourAccount);
      } else if (state is SignInFailureState) {
        showToast(state.errorMessage);
      }
    }, builder: (context, state) {
      AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
      return CustomScrollView(slivers: <Widget>[
        SliverToBoxAdapter(
            child: Form(
                key: authCubit.signInKey,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomHeader(),
                          SizedBox(height: size * 0.1),
                          CustomTextFormField(
                              onChanged: (value) {
                                authCubit.emailAddress = value;
                              },
                              hint: s.enterEmail),
                          const SizedBox(height: 10),
                          CustomTextFormFieldPass(
                              hint: s.enterPassword,
                              onChanged: (value) {
                                authCubit.password = value;
                              }),
                          const SizedBox(height: 25),
                          const CustomForgetPassword(),
                          const SizedBox(height: 25),
                          const CustomRememberMe(),
                          SizedBox(height: size * 0.212),
                          Richtext(
                            textAlign: TextAlign.center,
                            text: s.agree,
                            textButton: s.terms,
                          ),
                        ]),
                  ),
                  state is SignInLoadingState
                      ? const CircularProgressIndicator()
                      : CustomGesterDetector(
                          text: s.login,
                          onTap: () {
                            if (authCubit.signInKey.currentState!.validate()) {
                              authCubit.signInWithEmailAndPassword();
                            }
                          })
                ])))
      ]);
    });
  }
}

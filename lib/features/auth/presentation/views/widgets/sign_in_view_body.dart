// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_cupertino_switch.dart';

import '../../../../../core/function/custom_toast.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_string.dart';
import 'custom_auth_app_bar.dart';
import 'custom_gester_detector.dart';
import 'custom_text_button.dart';
import 'custom_text_field_pass.dart';
import 'custom_text_form_field.dart';
import 'rich_text.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is SignInSuccessState) {
        FirebaseAuth.instance.currentUser!.emailVerified
            ? GoRouter.of(context).pushReplacement(AppRouter.homeView)
            : showToast('Please verify your account');
      } else if (state is SignInFailureState) {
        showToast(state.errorMessage);
      }
    }, builder: (context, state) {
      AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
      return CustomScrollView(slivers: <Widget>[
        SliverToBoxAdapter(
            child: Form(
                key: authCubit.signInKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          const CustomAuthAppBar(),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(AppString.welcome,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge),
                                  const SizedBox(height: 5),
                                  Text(AppString.welcomeSubTitle,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: size * 0.1),
                          CustomTextFormField(
                            onChanged: (value) {
                              authCubit.emailAddress = value;
                            },
                            hint: 'Enter your email address',
                          ),
                          const SizedBox(height: 10),
                          CustomTextFormFieldPass(
                            hint: 'Enter your password',
                            onChanged: (value) {
                              authCubit.password = value;
                            },
                          ),
                          const SizedBox(height: 25),
                          Row(
                            children: [
                              const Spacer(),
                              CustomTextButton(
                                text: '${AppString.forgetPass}?',
                                color: AppColors.google,
                                onPressed: () {
                                  GoRouter.of(context)
                                      .push(AppRouter.forgetPassView);
                                },
                              )
                            ],
                          ),
                          const SizedBox(height: 25),
                          Row(
                            children: [
                              Text(
                                AppString.rememberMe,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: AppColors.black),
                              ),
                              const Spacer(),
                              const CustomCupertinoSwitch()
                            ],
                          ),
                          const SizedBox(height: 160),
                          const Richtext(
                            textAlign: TextAlign.center,
                            text: AppString.agree,
                            textButton: AppString.terms,
                          ),
                        ],
                      ),
                    ),
                    state is SignInLoadingState
                        ? const CircularProgressIndicator()
                        : CustomGesterDetector(
                            text: AppString.login,
                            onTap: () {
                              if (authCubit.signInKey.currentState!
                                  .validate()) {
                                authCubit.signInWithEmailAndPassword();
                              }
                            },
                          )
                  ],
                )))
      ]);
    });
  }
}

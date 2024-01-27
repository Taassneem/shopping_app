import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/function/custom_toast.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_string.dart';
import 'custom_auth_app_bar.dart';
import 'custom_cupertino_switch.dart';
import 'custom_gester_detector.dart';
import 'custom_text_field_pass.dart';
import 'custom_text_form_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is SignUpSuccessState) {
        showToast('Successfully, please verify your account');
        GoRouter.of(context).pushReplacement(AppRouter.signInView);
      } else if (state is SignUpFailureState) {
        showToast(state.errorMessage);
      }
    }, builder: (context, state) {
      AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
      return CustomScrollView(slivers: <Widget>[
        SliverToBoxAdapter(
            child: Form(
                key: authCubit.signUpKey,
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(children: [
                        const SizedBox(height: 10),
                        const CustomAuthAppBar(),
                        const SizedBox(height: 10),
                        Text(
                          AppString.signUp,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.14),
                        CustomTextFormField(
                            hint: 'Enter your username',
                            onChanged: (value) {
                              authCubit.userName = value;
                            }),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                            hint: 'Enter your email address',
                            onChanged: (value) {
                              authCubit.emailAddress = value;
                            }),
                        const SizedBox(height: 10),
                        CustomTextFormFieldPass(
                          hint: 'Enter your password',
                          onChanged: (value) {
                            authCubit.password = value;
                          },
                        ),
                        const SizedBox(height: 33),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(AppString.rememberMe,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: AppColors.black)),
                              const CustomCupertinoSwitch(),
                            ]),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.24)
                      ])),
                  state is SignInLoadingState
                      ? const CircularProgressIndicator()
                      : CustomGesterDetector(
                          text: AppString.signUp,
                          onTap: () {
                            if (authCubit.signUpKey.currentState!.validate()) {
                              authCubit.signUpWithEmailAndPassword();
                            }
                          })
                ])))
      ]);
    });
  }
}

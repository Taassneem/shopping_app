import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/function/custom_toast.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_remember_me.dart';
import 'package:shopping_app/generated/l10n.dart';
import 'custom_gester_detector.dart';
import 'custom_text_field_pass.dart';
import 'custom_text_form_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    var size = MediaQuery.of(context).size.height;
    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is SignUpSuccessState) {
        showToast(s.successfully);
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
                        Text(
                          s.signUp,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        SizedBox(height: size * 0.14),
                        CustomTextFormField(
                            hint: s.enterUsername,
                            onChanged: (value) {
                              authCubit.userName = value;
                            }),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                            hint: s.enterEmail,
                            onChanged: (value) {
                              authCubit.emailAddress = value;
                            }),
                        const SizedBox(height: 10),
                        CustomTextFormFieldPass(
                            hint: s.enterPassword,
                            onChanged: (value) {
                              authCubit.password = value;
                            }),
                        const SizedBox(height: 33),
                        const CustomRememberMe(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.24)
                      ])),
                  state is SignInLoadingState
                      ? const CircularProgressIndicator()
                      : CustomGesterDetector(
                          text: s.signUp,
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

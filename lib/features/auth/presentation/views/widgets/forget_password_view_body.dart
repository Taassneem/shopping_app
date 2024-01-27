import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/function/custom_toast.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import '../../../../../core/utils/app_string.dart';
import 'custom_auth_app_bar.dart';
import 'custom_gester_detector.dart';
import 'custom_text_form_field.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    var size = MediaQuery.of(context).size.height;
    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is ResetPasswordSuccessState) {
        showToast('Check Your Email to reset your password');
        GoRouter.of(context).push(AppRouter.signInView);
      } else if (state is ResetPasswordFailureState) {
        showToast(state.errorMessage);
      }
    }, builder: (context, state) {
      return CustomScrollView(slivers: <Widget>[
        SliverToBoxAdapter(
            child: Form(
                key: authCubit.resetPasswordKey,
                child: Column(children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, top: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const CustomAuthAppBar(),
                        const SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              AppString.forgetPass,
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            SizedBox(height: size * 0.08),
                            Image.asset(AppAssets.password),
                            const SizedBox(height: 50),
                          ],
                        ),
                        CustomTextFormField(
                          hint: 'Enter your email address',
                          onChanged: (value) {
                            authCubit.emailAddress = value;
                          },
                        ),
                        SizedBox(height: size * 0.17),
                        Text(
                          AppString.confirmMailQoute,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        SizedBox(height: size * 0.01),
                      ],
                    ),
                  ),
                  state is ResetPasswordLoadingState
                      ? const CircularProgressIndicator()
                      : CustomGesterDetector(
                          text: AppString.confirmEmail,
                          onTap: () {
                            if (authCubit.resetPasswordKey.currentState!
                                .validate()) {
                              authCubit.resetPaswordWithEmail();
                            }
                          })
                ])))
      ]);
    });
  }
}

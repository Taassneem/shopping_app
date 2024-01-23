import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_text_field.dart';

import '../../../../core/utils/app_string.dart';
import '../../../home/presentation/views/home_view.dart';
import 'widgets/custom_auth_app_bar.dart';
import 'widgets/custom_gester_detector.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({
    super.key,
  });
  // final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomAuthAppBar(),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppString.signUp,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                      ),
                      const CustomTextField(
                        // controller: controller,
                        // suffixIcon: controller!.text.isEmpty
                        //     ? const Icon(Icons.cancel)
                        //     : const Icon(Icons.check),
                        hint: 'Enter your username',
                        labelText: AppString.username,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomTextField(
                        hint: 'Enter your password',
                        labelText: AppString.password,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomTextField(
                        hint: 'Enter your email address',
                        labelText: AppString.email,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppString.rememberMe,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: AppColors.black),
                          ),
                          
                          CupertinoSwitch(
                            value: true,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomGesterDetector(
            text: AppString.signUp,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeView(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

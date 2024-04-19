import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sehety/core/constants/assets_images.dart';
import 'package:sehety/core/function/routing.dart';
import 'package:sehety/core/util/colors.dart';
import 'package:sehety/core/util/text_style.dart';
import 'package:sehety/core/widget/custom_button.dart';
import 'package:sehety/features/auth/presentation/view/registration_view.dart';
import 'package:sehety/features/auth/presentation/widget/custom_text_form_field.dart';

// ignore: must_be_immutable
class LoginView extends StatelessWidget {
  LoginView({super.key, required this.index});
  final int index;
  @override
  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String name = index == 0 ? 'دكتور' : 'مريض';
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: key,
            child: Column(
              children: [
                const Gap(40),
                Image.asset(height: 200, width: 200, AssetImages.appIcon),
                Text(
                  'سجل دخول الان كـ "$name"',
                  style: getBodyStyle(context,
                      color: AppColors.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
                const Gap(25),
                //email
                CustomTextFormField(
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'ادخل البريد الالكتروني';
                    }
                    return null;
                  },
                  hintText: 'البريد الالكتروني',
                  suffixIcon: const SizedBox(),
                  prefixIcon: Icon(
                    Icons.email,
                    color: AppColors.primaryColor,
                  ),
                ),
                //passwoed
                const Gap(25),
                CustomTextFormField(
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'ادخل كلمة السر';
                    }
                    return null;
                  },
                  obscureText: true,
                  hintText: '*********',
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: AppColors.primaryColor,
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: AppColors.primaryColor,
                  ),
                ),
                //Button Register an account'
                const Gap(25),
                CustomButton(
                  height: 45,
                  text: 'تسجيل حساب',
                  onPressed: () {
                    if (key.currentState!.validate()) {
                    } else {}
                  },
                  color: AppColors.primaryColor,
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'لدي حساب؟',
                      style: getBodyStyle(context),
                    ),
                    TextButton(
                        onPressed: () {
                          navigatorTo(
                              context,
                              Registration(
                                index: index,
                              ));
                        },
                        child: Text(
                          'سجل الان',
                          style: getBodyStyle(context,
                              color: AppColors.primaryColor),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

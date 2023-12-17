import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:treatment_app/commons/widgets/app_text.dart';
import 'package:treatment_app/commons/widgets/custom_button.dart';
import 'package:treatment_app/commons/widgets/form_widgets/name_input_from_field.dart';
import 'package:treatment_app/commons/widgets/form_widgets/password_input_from_field.dart';
import 'package:treatment_app/utils/resource/app_images.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Column(
            children: [
              /// [image]
              Image.asset(AppImages.loginTopImage),

              SizedBox(height: 24.h),

              /// [App logo]
              Image.asset(AppImages.loginTopImage),

              SizedBox(height: 40.h),

              /// [Text]
              AppText(
                text: 'Login to your Account',
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
              ),

              /// [Email field]
              EmailInputFormField(controller: emailController),

              SizedBox(height: 40.h),

              /// [Password field]
              PasswordInputFormField(controller: passwordController),

              SizedBox(height: 10.h),

              /// [Remember Me]
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      /// [check box]
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),

                      /// [Text]
                      AppText(
                        text: 'Remember me',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),

                  /// [text]
                  AppText(
                    text: 'Forgot Password?',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),

              SizedBox(height: 30.h),

              /// [login button]
              CustomButton(
                onTap: () {},
                btnName: 'Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
